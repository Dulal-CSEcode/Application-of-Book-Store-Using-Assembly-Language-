


org 100h

.model large 
.stack 1000h  
.data
     
intro db '              **************** Welcome to our project **************** $',10,13  

intro2 db '             *************  Application of book store   ************* $',10,13 

intro3 db '             ********  Dulal-213902116 & Shajid-123902074   ********* $',10,13  

nl db 0dh,0ah,'$'                ;new line

    
     
    


;option 
a7 db 10,13,'                   Book list ----$'
a8 db 10,13,'                   Enter Your Choice : $'
a19 db 10,13,'                  Enter 1 to Display Books List : $'
a34 db 10,13,'                  Peak Your Book : $'
a35 db 10,13,'                  Enter Quantity : $'
a36 db 10,13,'                  Invalid Input ?? Return the progrem $'
a37 db 10,13,'                  Total Price : $'
a38 db 10,13,'                  1. Book List : $'
a39 db 10,13,'                  2. Exit : $' 


; Book list 
a9 db 10,13,'                   1. CSE Book List  $'
a10 db 10,13,'                  2. EEE Book List  $' 
a11 db 10,13,'                  3. TEX Book List  $'  

;CSE Book List 
a12 db 11,13,'                   ***        CSE Book List   ( Each 50 Taka )      ***$'  
a13 db 10,13,'                          1. Data Structure   $'
a14 db 10,13,'                          2. Algorithm    $'
a15 db 10,13,'                          3. Java   $'
a16 db 10,13,'                          4. Computer Articuter   $'
a17 db 10,13,'                          5. Microprocessor   $'
a18 db 10,13,'                          6. Data Comunication   $'


;EEE Book List 
a20 db 11,13,'                   ***        EEE Book List ( Each 100 Taka )        ***$'  
a21 db 10,13,'                          1. Electronic Divices & Circuits   $'
a22 db 10,13,'                          2. Introductory Circuit Analysis    $'
a23 db 10,13,'                          3. Electronic Principles  $'
a24 db 10,13,'                          4. Introduction to Electrical Engineering  $'
a25 db 10,13,'                          5. Wireless Communications  $'
a26 db 10,13,'                          6. Mechanical Engineering   $'  ; Electric Machinery Fundamentals


;EEE Book List 
a27 db 11,13,'                   ***        TEX Book List  ( Each 200 Taka )       ***$'  
a28 db 10,13,'                          1. An Introduction to textile finishing   $'
a29 db 10,13,'                          2. Fabric Structure and design  $'
a30 db 10,13,'                          3. Principles of textile testing   $'
a31 db 10,13,'                          4. Garments Merchandising  $'
a32 db 10,13,'                          5. Electricity and Magnetism  $'
a33 db 10,13,'                          6. Garments and Technology  $'  ; GARMENTS WASHING & DYEING


.code
main proc
    
    mov ax,@data
    mov ds,ax
    

  
     lea dx,intro                
     mov ah,9
     int 21h 
     lea dx,nl                   
     mov ah,9
     int 21h 
     
     lea dx,intro2               
     mov ah,9
     int 21h  
     lea dx,nl                   
     mov ah,9
     int 21h 
     
     lea dx,intro3               
     mov ah,9
     int 21h      
          
     lea dx,nl                   
     mov ah,9
     int 21h
  
    
    ;newline print 
     mov ah,2
     mov dl,10
     int 21h 
     mov dl,13
     int 21h 
     
     mov ah,2
     mov dl,10
     int 21h 
     mov dl,13
     int 21h
     
     ;take input to atart
     mov ah,9
     mov dx,offset a19
     int 21h 
     mov ah,1
     int 21h 
     mov bh,al
     sub bh,48
     
     cmp bh,1
     je BookList
     jmp Invalid
     
     
     Booklist:
     ;newline 
     mov ah,2
     mov dl,10
     int 21h 
     mov dl,13
     int 21h
     
     mov ah,2
     mov dl,10
     int 21h 
     mov dl,13
     int 21h
     
     mov ah,9
     mov dx,offset a7
     int 21h 
     mov dx,offset a9
     int 21h
     mov dx,offset a10
     int 21h
     mov dx,offset a11
     int 21h
     
    ;List Choice  
     mov dx,offset a8
     int 21h
     
     mov ah,1
     int 21h 
     mov bh,al
     sub bh,48 
     
     cmp bh,1
     je CSElist
     
     cmp bh,2
     je EEElist
     
     cmp bh,3
     je TEXlist
     
     jmp Invalid 
     
     
     ;CSE Book list
     CSElist:
     
     ;newline print 
     mov ah,2
     mov dl,10
     int 21h 
     mov dl,13
     int 21h 
     
     mov ah,2
     mov dl,10
     int 21h 
     mov dl,13
     int 21h
     
     ;CSE Book List start
     mov ah,9
     mov dx,offset a12
     int 21h
     
     mov  ah,2
     mov dl,10
     int 21h
     mov dl,13
     int 21h
     
    mov ah,9
    mov dx,offset a13
    int 21h
    mov dx,offset a14
    int 21h
    mov dx,offset a15
    int 21h 
    mov dx,offset a16
    int 21h
    mov dx,offset a17
    int 21h
    mov dx,offset a18
    int 21h
    
    
    ;condition Check    
    mov dx,offset a34
    int 21h
    
    mov ah,1
    int 21h
    mov bl,al
    sub bl,48
    
    cmp bl,1
    je fifty
    
    cmp bl,2
    je fifty
    
    cmp bl,3
    je fifty
    
    cmp bl,4
    je fifty  
    
    cmp bl,5
    je fifty
    
    cmp bl,6
    je fifty
    
    
    
    
    jmp Invalid 
    
    
    ;EEE Book list
     EEElist:     
     ;newline print 
     mov ah,2
     mov dl,10
     int 21h 
     mov dl,13
     int 21h 
     
     mov ah,2
     mov dl,10
     int 21h 
     mov dl,13
     int 21h
     
     ;EEEE Book List start
     mov ah,9
     mov dx,offset a20
     int 21h
     
     mov  ah,2
     mov dl,10
     int 21h
     mov dl,13
     int 21h
     
    mov ah,9
    mov dx,offset a21
    int 21h
    mov dx,offset a22
    int 21h
    mov dx,offset a23
    int 21h 
    mov dx,offset a24
    int 21h
    mov dx,offset a25
    int 21h
    mov dx,offset a26
    int 21h
    
    ;condition Check    
    mov dx,offset a34
    int 21h
    
    mov ah,1
    int 21h
    mov bl,al
    sub bl,48
    
    cmp bl,1
    je hundred
    
    cmp bl,2
    je hundred
    
    cmp bl,3
    je hundred
    
    cmp bl,4
    je hundred  
    
    cmp bl,5
    je hundred
    
    cmp bl,6
    je hundred
   
    jmp Invalid
    
    ;for exit 
     mov  ah,2
     mov dl,10
     int 21h
     mov dl,13
     int 21h
     
    mov ah,9
    mov dx,offset a38
    int 21h
    
    mov ah,1
    int 21h
    mov bl,al
    
    cmp bl,1
    je exit   
    
 
     ;TEX Book list
     TEXlist:     
     ;newline print 
     mov ah,2
     mov dl,10
     int 21h 
     mov dl,13
     int 21h 
     
     mov ah,2
     mov dl,10
     int 21h 
     mov dl,13
     int 21h
     
     ;TEX Book List start
     mov ah,9
     mov dx,offset a27
     int 21h
     
     mov  ah,2
     mov dl,10
     int 21h
     mov dl,13
     int 21h
     
    mov ah,9
    mov dx,offset a28
    int 21h
    mov dx,offset a29
    int 21h
    mov dx,offset a30
    int 21h 
    mov dx,offset a31
    int 21h
    mov dx,offset a32
    int 21h
    mov dx,offset a33
    int 21h
    
    ;condition Check    
    mov dx,offset a34
    int 21h
    
    mov ah,1
    int 21h
    mov bl,al
    sub bl,48
    
    cmp bl,1
    je twohundred
    
    cmp bl,2
    je twohundred
    
    cmp bl,3
    je twohundred
    
    cmp bl,4
    je twohundred  
    
    cmp bl,5
    je twohundred
    
    cmp bl,6
    je twohundred
   
    jmp Invalid  
      
      
    fifty:
    mov bl,5
    mov dx,offset a35
    mov ah,9
    int 21h
    
    mov ah,1
    int 21h
    sub al,48
    
    mul bl
    
    aam ; ascii adjust after multiplication aan 
    
    mov cx,ax
    add ch,48
    add cl,48
    
    
    mov dx,offset a37
    mov ah,9
    int 21h
    
    mov ah,2
    mov dl,ch
    int 21h
    
    
    mov dl,cl
    int 21h
    
    mov dl,'0'
    int 21h
    
    
    
    mov dl,47
    int 21h
    mov dl,45
    int 21h
    
    ;for exit or main menu
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    mov ah,9
    mov dx,offset a38    
    int 21h
    
    mov ah,9
    mov dx,offset a39    
    int 21h
    
    mov ah,9
    mov dx,offset a8    
    int 21h
    
    mov ah,1
    int 21h
    sub al,48
    
    cmp al,1
    je BookList
    
    cmp al,2
    je Exit 
    
    jmp Invalid
    
    
    hundred:
    mov bl,10
    mov dx,offset a35
    mov ah,9
    int 21h
    
    mov ah,1
    int 21h
    sub al,48
    
    mul bl    
    aam ; ascii adjust after multiplication aan 
    
    mov cx,ax
    add ch,48
    add cl,48
    
    
    mov dx,offset a37
    mov ah,9
    int 21h
    
    mov ah,2
    mov dl,ch
    int 21h
        
    mov dl,cl
    int 21h
    
    mov dl,'0'
    int 21h
     
    mov dl,47
    int 21h
    mov dl,45
    int 21h
    
    ;for exit or main menu
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    mov ah,9
    mov dx,offset a38    
    int 21h
    
    mov ah,9
    mov dx,offset a39    
    int 21h
    
    mov ah,9
    mov dx,offset a8    
    int 21h
    
    mov ah,1
    int 21h
    sub al,48
    
    cmp al,1
    je BookList
    
    cmp al,2
    je Exit 
    
    jmp Invalid
    
    
    twohundred:
    mov bl,20
    mov dx,offset a35
    mov ah,9
    int 21h
    
    mov ah,1
    int 21h
    sub al,48
    
    mul bl    
    aam ; ascii adjust after multiplication aan 
    
    mov cx,ax
    add ch,48
    add cl,48
    
    
    mov dx,offset a37
    mov ah,9
    int 21h
    
    mov ah,2
    mov dl,ch
    int 21h
        
    mov dl,cl
    int 21h
    
    mov dl,'0'
    int 21h
     
    mov dl,47
    int 21h
    mov dl,45
    int 21h
    
    ;for exit or main menu
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    mov ah,9
    mov dx,offset a38    
    int 21h
    
    mov ah,9
    mov dx,offset a39    
    int 21h
    
    mov ah,9
    mov dx,offset a8    
    int 21h
    
    mov ah,1
    int 21h
    sub al,48
    
    cmp al,1
    je BookList
    
    cmp al,2
    je Exit 
    
    jmp Invalid  
    
    
    Invalid:
     ;newline print 
     mov ah,2
     mov dl,10
     int 21h 
     mov dl,13
     int 21h 
     
     mov ah,2
     mov dl,10
     int 21h 
     mov dl,13
     int 21h
      
      
     mov ah,9
     mov dx,offset a36
     int 21h
     jmp Exit
     
     
     Exit:
     mov ah,4ch
     int 21h
     main endp
     end main