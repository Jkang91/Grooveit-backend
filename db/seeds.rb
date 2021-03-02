#DANCEVIDEOS
DanceVideo.create(title: "Waves", category: "hip/hop", difficulty_level: "beginner", url: "https://www.youtube.com/watch?v=VCX1mNfTnx0" )
DanceVideo.create(title: "Shuffle steps", category: "hip/hop", difficulty_level: "beginner", url: "https://www.youtube.com/watch?v=29pQw2e1Ugg")
DanceVideo.create(title: "Isolations", category: "hip/hop", difficulty_level: "beginner", url: "https://www.youtube.com/watch?v=Xgsk7yvSiPg")
DanceVideo.create(title: "Tutting", category: "hip/hop", difficulty_level: "beginner", url: "https://www.youtube.com/watch?v=lrluSO-Qs0E")
DanceVideo.create(title: "Body waves", category: "hip/hop", difficulty_level: "beginner", url: "https://www.youtube.com/watch?v=8BRogKK6q-c")
DanceVideo.create(title: "Popping", category: "hip/hop", difficulty_level: "beginner", url: "https://www.youtube.com/watch?v=UlXuMDaUE0E")
DanceVideo.create(title: "Popping", category: "hip/hop", difficulty_level: "intermediate", url: "https://www.youtube.com/watch?v=UlXuMDaUE0E")
DanceVideo.create(title: "Popping", category: "hip/hop", difficulty_level: "advanced", url: "https://www.youtube.com/watch?v=UlXuMDaUE0E")

User.create(name: "June", username: "jk91", password: "password")

Comment.create(user_id: 1, dance_video_id: 1, comment: "this is so rad!")

Favorite.create(user_id: 1, dance_video_id: 1)