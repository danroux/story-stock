set :haml, :format => :html5
f = File.read("config/config.yml")
@@config = YAML.load(f)

get "/" do
  @client = PivotalTracker::Client.token = @@config["pt"][:token]
  @a_project = PivotalTracker::Project.find(@@config["pt"][:project_id]) 
  haml :index
end

