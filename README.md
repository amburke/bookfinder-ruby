# Bookfinder

Add this line to your application's Gemfile:

```ruby
gem 'bookfinder'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install bookfinder

## Usage

Currently this gem allows you to only make a get request to a publicly accessible endpoint, which is why no authorization is required.

To instantiate the BookFinder client you can do the following:

```
#because it's a public endpoint you don't need any authentication
bookfinder = BookFinder::Client.new
```

Currently the BookFinder API only has one endpoint:
```
#searching by bookname or author name will return an array of results that contain author name, title of the book, a description, and an image link
bookfinder.books("1984")
```
```=> [#<BookFinder::Book:0x007f7feb0eb4e8 @title="Nineteen Eighty-four", @authors="George Orwell", @page_count=325, @description="Renowned urban artist Shepard Fairey's new look for Orwell's classic dystopian tale One of Britain's most popular novels, George Orwell's Nineteen Eighty-Four is set in a society terrorised by a totalitarian ideology propagated by The Party. Winston Smith works for the Ministry of Truth in London, chief city of Airstrip One. Big Brother stares out from every poster, the Thought Police uncover every act of betrayal. When Winston finds love with Julia, he discovers that life does not have to be dull and deadening, and awakens to new possibilities. Despite the police helicopters that hover and circle overhead, Winston and Julia begin to question the Party; they are drawn towards conspiracy. Yet Big Brother will not tolerate dissent - even in the mind. For those with original thoughts they invented Room 101. . . Nineteen Eighty-Four is George Orwell's terrifying vision of a totalitarian future in which everything and everyone is slave to a tyrannical regime. The novel also coined many new words and phrases which regular appear in popular culture, such as 'Big Brother', 'thoughtcrime', 'doublethink' and 'Newspeak'.">, #<BookFinder::Book:0x007f7feb0eb4c0 @title="Nineteen Eighty-four", @authors="George Orwell", @page_count=246, @description=nil>, #<BookFinder::Book:0x007f7feb0eb498 @title="1984", @authors=" George Orwell", @page_count=300, @description="The year 1984 has come and gone, but George Orwell's prophetic, nightmarish vision in 1949 of the world we were becoming is timelier than ever. 1984 is still the great modern classic of \"negative utopia\" -a startlingly original and haunting novel that creates an imaginary world that is completely convincing, from the first sentence to the last four words. No one can deny the novel's hold on the imaginations of whole generations, or the power of its admonitions -a power that seems to grow, not lessen, with the passage of time.">, #<BookFinder::Book:0x007f7feb0eb470 @title="1984", @authors="George Orwell", @page_count=317, @description="George Orwell's dystopian masterpiece, Nineteen Eighty-Four is perhaps the most pervasively influential book of the twentieth century, making famous Big Brother, newspeak and Room 101. 'Who controls the past controls the future: who controls the present controls the past'">, #<BookFinder::Book:0x007f7feb0eb448 @title="1984", @authors="George Orwell", @page_count=120, @description="War is Peace. Freedom is Slavery. Ignorance is Strength. Winston Smith rewrites history for the Ministry of Truth, but when he’s handed a note that says simply ‘I love you’ by a woman he hardly knows, he decides to risk everything in a search for the real truth. In a world where cheap entertainment keeps the proles ignorant but content, where a war without end is always fought and the government is always watching, can Winston possibly hold onto what he feels inside? Or will he renounce everything, accept the Party’s reality and learn to love Big Brother? ‘Dunster – both in his faithful take on the story and in his sometimes extreme but always enthralling adaptation – gets close to the heart of Orwell’s warning, pointing up but not overemphasising its current political resonances.... Newspeak, Doublethink, Room 101 and Thought Police take on a chilling reality in this compelling production.’ – The Independent">, #<BookFinder::Book:0x007f7feb0eb420 @title="Developments in design methodology", @authors="Nigel Cross", @page_count=357, @description="The only comprehensive, one volume compilation of the key papers and history of design methodology published over the last twenty years. Section introductions provide a succinct overview with the primary focus in the architectural and environmental design fields.">, #<BookFinder::Book:0x007f7feb0eb3f8 @title="George Orwell's 1984", @authors="Kit Reed", @page_count=118, @description="A guide to reading \"1984\" with a critical and appreciative mind. Includes background on the author's life and times, sample tests, term paper suggestions, and a reading list.">, #<BookFinder::Book:0x007f7feb0eb3d0 @title="George Orwell's 1984", @authors="George Orwell", @page_count=88, @description="A dramatized version of the novel that depicts life in a future time when a totalitarian government watches over all citizens and directs all activities.">, #<BookFinder::Book:0x007f7feb0eb308 @title="George Orwell's 1984", @authors="Harold Bloom", @page_count=124, @description="Examines different aspects of Orwell's anti-utopian classic, with a biographical sketch of the author and critical essays on this work.">, #<BookFinder::Book:0x007f7feb0eb290 @title="1984 (MAXNotes Literature Guides)", @authors="Karen Brodeur", @page_count=120, @description="REA's MAXnotes for George Orwell's 1984 MAXnotes offer a fresh look at masterpieces of literature, presented in a lively and interesting fashion. Written by literary experts who currently teach the subject, MAXnotes will enhance your understanding and enjoyment of the work. MAXnotes are designed to stimulate independent thought about the literary work by raising various issues and thought-provoking ideas and questions. MAXnotes cover the essentials of what one should know about each work, including an overall summary, character lists, an explanation and discussion of the plot, the work's historical context, illustrations to convey the mood of the work, and a biography of the author. Each chapter is individually summarized and analyzed, and has study questions and answers.">]```
