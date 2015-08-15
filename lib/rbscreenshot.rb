require 'capybara'
require 'capybara/poltergeist'

class RbScreenShot
  class << self
    def take(url, full: true)
      session(url).save_screenshot("#{Time.now.to_i.to_s}.png", full: full)
    end

    def take_part(url)
      take(url, full: false)
    end

    def session(url)
      initialize_capybara

      session = Capybara::Session.new(:poltergeist)
      session.driver.headers = {'User-Agent' => "Mozilla/5.0 (Macintosh; Intel Mac OS X)"}
      session.visit(url)
      session
    end

    def initialize_capybara
      Capybara.javascript_driver = :poltergeist
      Capybara.register_driver :poltergeist do |app|
        Capybara::Poltergeist::Driver.new app, js_errors: false
      end
      Capybara.default_selector = :xpath
    end
  end
end
