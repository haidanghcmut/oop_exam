require './library.rb'
def main
    $own_process = check_user
    case $own_process
      when "admin"
        puts "----------------------------------"
        puts "Lua chon chuc nang"
        puts "[1].Tim kiem sach"
        puts "[2].Them mot sach moi"
        puts "[3].Xoa sach trong thu vien"
        puts "[4].Sua thong tin sach"
        puts "[5].Them nguoi dung"
        puts "[6].Quay lai man hinh dang nhap"
        puts "[7].Thoat"
  
        case gets.chomp.to_i
          when 1
            book_seaching
          when 2
            book_adding
          when 3
            book_deleting
          when 4
            book_editing
          when 5
            user_adding
          when 6
            login
          when 7
            exit
        end
      when "user"
        puts "----------------------------------"
        puts "Lua chon chuc nang"
        puts "[1].Tim kiem sach"
        puts "[2].Quay lai man hinh dang nhap"
        puts "[3].Thoat"
        case gets.chomp.to_i
          when 1
            book_seaching
          when 2
            login
          when 3
            exit
        end
    end
  end