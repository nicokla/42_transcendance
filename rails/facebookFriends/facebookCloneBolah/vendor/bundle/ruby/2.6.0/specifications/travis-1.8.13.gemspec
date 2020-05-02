# -*- encoding: utf-8 -*-
# stub: travis 1.8.13 ruby lib

Gem::Specification.new do |s|
  s.name = "travis".freeze
  s.version = "1.8.13"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Konstantin Haase".freeze, "Hiro Asari".freeze, "Henrik Hodne".freeze, "joshua-anderson".freeze, "Aaron Hill".freeze, "Piotr Milcarz".freeze, "Buck Doyle".freeze, "Peter Souter".freeze, "Christopher Grim".freeze, "Joe Corcoran".freeze, "Sven Fuchs".freeze, "Peter van Dijk".freeze, "Aakriti Gupta".freeze, "Josh Kalderimis".freeze, "Piotr Sarnacki".freeze, "Ke Zhu".freeze, "Max Barnash".freeze, "Ren\u00E9e Hendricksen".freeze, "carlad".freeze, "Carlos Palhares".freeze, "mariadeanton".freeze, "Mathias Meyer".freeze, "Dan Buch".freeze, "Mar\u00EDa de Ant\u00F3n".freeze, "Matt Toothman".freeze, "Thais Camilo and Konstantin Haase".freeze, "Tobias Bieniek".freeze, "Eugene Shubin".freeze, "Beau Bouchard".freeze, "Andreas Tiefenthaler".freeze, "Alpha".freeze, "Eugene".freeze, "Igor Wiedler".freeze, "Corinna Wiesner".freeze, "Joep van Delft".freeze, "Stefan Nordhausen".freeze, "David Rodr\u00EDguez".freeze, "Mario Visic".freeze, "Matt".freeze, "Matteo Sumberaz".freeze, "Matthias Bussonnier".freeze, "john muhl".freeze, "Michael Mior".freeze, "Michael S. Fischer".freeze, "Miro Hron\u010Dok".freeze, "Neamar".freeze, "Nero Leung".freeze, "Nicolas Bessi (nbessi)".freeze, "Peter Bengtsson".freeze, "Basarat Ali Syed".freeze, "Rapha\u00EBl Pinson".freeze, "Adam Lavin".freeze, "Rob Hoelz".freeze, "Robert Van Voorhees".freeze, "Simon Cropp".freeze, "Adrien Brault".freeze, "Zachary Gershman".freeze, "Zachary Scott".freeze, "jeffdh".freeze, "Dominic Jodoin".freeze, "Eric Herot".freeze, "Tobias Wilken".freeze, "George Millo".freeze, "Harald Nordgren".freeze, "HaraldNordgren".freeze, "Daniel Chatfield".freeze, "Igor".freeze, "Jacob Atzen".freeze, "Jacob Burkhart".freeze, "James Nylen".freeze, "Joe Rafaniello".freeze, "Jon-Erik Schneiderhan".freeze, "Jonas Chromik".freeze, "Jonne Ha\u00DF".freeze, "Julia S.Simon".freeze, "Justin Lambert".freeze, "Benjamin Manns".freeze, "Laurent Petit".freeze, "Maarten van Vliet".freeze]
  s.date = "2020-04-07"
  s.description = "CLI and Ruby client library for Travis CI".freeze
  s.email = ["konstantin.mailinglists@googlemail.com".freeze, "asari.ruby@gmail.com".freeze, "j@zatigo.com".freeze, "aa1ronham@gmail.com".freeze, "piotrm@travis-ci.org".freeze, "me@henrikhodne.com".freeze, "b@chromatin.ca".freeze, "henrik@hodne.io".freeze, "p.morsou@gmail.com".freeze, "chrisg@luminal.io".freeze, "joe@corcoran.io".freeze, "peter.van.dijk@netherlabs.nl".freeze, "me@svenfuchs.com".freeze, "josh.kalderimis@gmail.com".freeze, "drogus@gmail.com".freeze, "kzhu@us.ibm.com".freeze, "renee@travis-ci.org".freeze, "i.am@anhero.ru".freeze, "dan@meatballhat.com".freeze, "mariadeanton@gmail.com".freeze, "mariadeanton@gmail.com".freeze, "me@xjunior.me".freeze, "matt.toothman@aver.io".freeze, "meyer@paperplanes.de".freeze, "aakritigupta@users.noreply.github.com".freeze, "carlad@users.noreply.github.com".freeze, "51701929+eugene-travis@users.noreply.github.com".freeze, "AlphaWong@users.noreply.github.com".freeze, "at@an-ti.eu".freeze, "127320+BeauBouchard@users.noreply.github.com".freeze, "wiesner@avarteq.de".freeze, "deivid.rodriguez@gmail.com".freeze, "eugene@travis-ci.org".freeze, "aakriti@travis-ci.org".freeze, "igor@travis-ci.org".freeze, "stefan.nordhausen@immobilienscout24.de".freeze, "dev+narwen+rkh@rkh.im".freeze, "tobias.bieniek@gmail.com".freeze, "Jonas.Chromik@student.hpi.uni-potsdam.de".freeze, "joep@travis-ci.org".freeze, "julia.simon@biicode.com".freeze, "jlambert@eml.cc".freeze, "jrafanie@users.noreply.github.com".freeze, "jnylen@gmail.com".freeze, "laurent.petit@gmail.com".freeze, "maartenvanvliet@gmail.com".freeze, "mario@mariovisic.com".freeze, "jburkhart@engineyard.com".freeze, "jatzen@gmail.com".freeze, "mtoothman@users.noreply.github.com".freeze, "igorwwwwwwwwwwwwwwwwwwww@users.noreply.github.com".freeze, "gnappoms@gmail.com".freeze, "bussonniermatthias@gmail.com".freeze, "haraldnordgren@gmail.com".freeze, "mmior@uwaterloo.ca".freeze, "mfischer@zendesk.com".freeze, "miro@hroncok.cz".freeze, "neamar@neamar.fr".freeze, "neroleung@gmail.com".freeze, "nbessi@users.noreply.github.com".freeze, "peterbe@mozilla.com".freeze, "haraldnordgren@gmail.com".freeze, "georgejulianmillo@gmail.com".freeze, "eric.github@herot.com".freeze, "dominic@travis-ci.com".freeze, "raphael.pinson@camptocamp.com".freeze, "chatfielddaniel@gmail.com".freeze, "rob@hoelz.ro".freeze, "rcvanvo@gmail.com".freeze, "simon.cropp@gmail.com".freeze, "git@johnmuhl.com".freeze, "benmanns@gmail.com".freeze, "adrien.brault@gmail.com".freeze, "adam@lavoaster.co.uk".freeze, "tw@cloudcontrol.de".freeze, "pair+zg@pivotallabs.com".freeze, "e@zzak.io".freeze, "carla@travis-ci.org".freeze, "basaratali@gmail.com".freeze, "jeffdh@gmail.com".freeze, "joepvd@users.noreply.github.com".freeze, "jon-erik.schneiderhan@meyouhealth.com".freeze, "me@jhass.eu".freeze]
  s.executables = ["travis".freeze]
  s.files = ["bin/travis".freeze]
  s.homepage = "https://github.com/travis-ci/travis.rb".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.0.3".freeze
  s.summary = "Travis CI client".freeze

  s.installed_by_version = "3.0.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<faraday>.freeze, ["~> 0.9"])
      s.add_runtime_dependency(%q<faraday_middleware>.freeze, ["~> 0.9", ">= 0.9.1"])
      s.add_runtime_dependency(%q<highline>.freeze, ["~> 1.6"])
      s.add_runtime_dependency(%q<backports>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<gh>.freeze, ["~> 0.13"])
      s.add_runtime_dependency(%q<launchy>.freeze, ["~> 2.1"])
      s.add_runtime_dependency(%q<typhoeus>.freeze, ["~> 0.6", ">= 0.6.8"])
      s.add_runtime_dependency(%q<pusher-client>.freeze, ["~> 0.4"])
      s.add_development_dependency(%q<rspec>.freeze, ["~> 2.12"])
      s.add_development_dependency(%q<rspec-its>.freeze, [">= 0"])
      s.add_development_dependency(%q<sinatra>.freeze, ["~> 1.3"])
      s.add_development_dependency(%q<rack-test>.freeze, ["~> 0.6"])
    else
      s.add_dependency(%q<faraday>.freeze, ["~> 0.9"])
      s.add_dependency(%q<faraday_middleware>.freeze, ["~> 0.9", ">= 0.9.1"])
      s.add_dependency(%q<highline>.freeze, ["~> 1.6"])
      s.add_dependency(%q<backports>.freeze, [">= 0"])
      s.add_dependency(%q<gh>.freeze, ["~> 0.13"])
      s.add_dependency(%q<launchy>.freeze, ["~> 2.1"])
      s.add_dependency(%q<typhoeus>.freeze, ["~> 0.6", ">= 0.6.8"])
      s.add_dependency(%q<pusher-client>.freeze, ["~> 0.4"])
      s.add_dependency(%q<rspec>.freeze, ["~> 2.12"])
      s.add_dependency(%q<rspec-its>.freeze, [">= 0"])
      s.add_dependency(%q<sinatra>.freeze, ["~> 1.3"])
      s.add_dependency(%q<rack-test>.freeze, ["~> 0.6"])
    end
  else
    s.add_dependency(%q<faraday>.freeze, ["~> 0.9"])
    s.add_dependency(%q<faraday_middleware>.freeze, ["~> 0.9", ">= 0.9.1"])
    s.add_dependency(%q<highline>.freeze, ["~> 1.6"])
    s.add_dependency(%q<backports>.freeze, [">= 0"])
    s.add_dependency(%q<gh>.freeze, ["~> 0.13"])
    s.add_dependency(%q<launchy>.freeze, ["~> 2.1"])
    s.add_dependency(%q<typhoeus>.freeze, ["~> 0.6", ">= 0.6.8"])
    s.add_dependency(%q<pusher-client>.freeze, ["~> 0.4"])
    s.add_dependency(%q<rspec>.freeze, ["~> 2.12"])
    s.add_dependency(%q<rspec-its>.freeze, [">= 0"])
    s.add_dependency(%q<sinatra>.freeze, ["~> 1.3"])
    s.add_dependency(%q<rack-test>.freeze, ["~> 0.6"])
  end
end
