
#0 * * * * cd /home/datauy/apelatron && RAILS_ENV=production bin/bundle exec rake follow_up >> /var/log/apelatron_follow_up.log
task :follow_up => :environment do
    Complaint.where(follow_up_sent: false).where("created_at < ?", 30.days.ago).each do |complaint|
        AdminMailer.with(complaint: complaint).complaint_followup.deliver
        complaint.follow_up_sent = true
        complaint.save
    end
end
