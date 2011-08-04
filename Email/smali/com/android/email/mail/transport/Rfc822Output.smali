.class public Lcom/android/email/mail/transport/Rfc822Output;
.super Ljava/lang/Object;
.source "Rfc822Output.java"


# static fields
.field private static final PATTERN_ENDLINE_CRLF:Ljava/util/regex/Pattern;

.field private static final PATTERN_START_OF_LINE:Ljava/util/regex/Pattern;

.field static final mDateFormat:Ljava/text/SimpleDateFormat;

.field private static mIsExchangeAccount:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 113
    const-string v0, "(?m)^"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/email/mail/transport/Rfc822Output;->PATTERN_START_OF_LINE:Ljava/util/regex/Pattern;

    .line 114
    const-string v0, "\r\n"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/email/mail/transport/Rfc822Output;->PATTERN_ENDLINE_CRLF:Ljava/util/regex/Pattern;

    .line 126
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE, dd MMM yyyy HH:mm:ss Z"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/android/email/mail/transport/Rfc822Output;->mDateFormat:Ljava/text/SimpleDateFormat;

    .line 129
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/email/mail/transport/Rfc822Output;->mIsExchangeAccount:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static buildBodyText(Landroid/content/Context;Lcom/android/email/provider/EmailContent$Message;Z)Ljava/lang/String;
    .locals 13
    .parameter "context"
    .parameter "message"
    .parameter "appendQuotedText"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 135
    iget-wide v8, p1, Lcom/android/email/provider/EmailContent$Message;->mId:J

    invoke-static {p0, v8, v9}, Lcom/android/email/provider/EmailContent$Body;->restoreBodyWithMessageId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Body;

    move-result-object v1

    .line 137
    .local v1, body:Lcom/android/email/provider/EmailContent$Body;
    if-nez v1, :cond_0

    move-object v8, v12

    .line 177
    :goto_0
    return-object v8

    .line 141
    :cond_0
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 143
    .local v7, sbText:Ljava/lang/StringBuffer;
    iget v2, p1, Lcom/android/email/provider/EmailContent$Message;->mFlags:I

    .line 144
    .local v2, flags:I
    and-int/lit8 v8, v2, 0x1

    if-eqz v8, :cond_2

    move v6, v10

    .line 145
    .local v6, isReply:Z
    :goto_1
    and-int/lit8 v8, v2, 0x2

    if-eqz v8, :cond_3

    move v5, v10

    .line 146
    .local v5, isForward:Z
    :goto_2
    iget-object v8, v1, Lcom/android/email/provider/EmailContent$Body;->mIntroText:Ljava/lang/String;

    if-nez v8, :cond_4

    const-string v8, ""

    move-object v3, v8

    .line 148
    .local v3, intro:Ljava/lang/String;
    :goto_3
    iget-wide v8, p1, Lcom/android/email/provider/EmailContent$Message;->mAccountKey:J

    invoke-static {p0, v8, v9}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v0

    .line 149
    .local v0, acc:Lcom/android/email/provider/EmailContent$Account;
    invoke-virtual {v0, p0}, Lcom/android/email/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "eas"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    .line 151
    .local v4, isExchange:Z
    if-ne v10, p2, :cond_5

    .line 153
    iget-object v8, v1, Lcom/android/email/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 154
    if-eq v10, v6, :cond_1

    if-ne v10, v5, :cond_6

    .line 156
    :cond_1
    invoke-virtual {v7, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 157
    iget-object v8, v1, Lcom/android/email/provider/EmailContent$Body;->mTextReply:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 159
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .end local v0           #acc:Lcom/android/email/provider/EmailContent$Account;
    .end local v3           #intro:Ljava/lang/String;
    .end local v4           #isExchange:Z
    .end local v5           #isForward:Z
    .end local v6           #isReply:Z
    :cond_2
    move v6, v11

    .line 144
    goto :goto_1

    .restart local v6       #isReply:Z
    :cond_3
    move v5, v11

    .line 145
    goto :goto_2

    .line 146
    .restart local v5       #isForward:Z
    :cond_4
    iget-object v8, v1, Lcom/android/email/provider/EmailContent$Body;->mIntroText:Ljava/lang/String;

    move-object v3, v8

    goto :goto_3

    .line 164
    .restart local v0       #acc:Lcom/android/email/provider/EmailContent$Account;
    .restart local v3       #intro:Ljava/lang/String;
    .restart local v4       #isExchange:Z
    :cond_5
    iget-object v8, v1, Lcom/android/email/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 166
    invoke-static {}, Lcom/android/email/mail/transport/Rfc822Output;->getIsExchangeAccount()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 168
    invoke-virtual {v7, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 172
    :cond_6
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    if-gtz v8, :cond_7

    move-object v8, v12

    .line 174
    goto :goto_0

    .line 177
    :cond_7
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_0
.end method

.method static buildBodyTextHtml(Landroid/content/Context;Lcom/android/email/provider/EmailContent$Message;Z)Ljava/lang/String;
    .locals 13
    .parameter "context"
    .parameter "message"
    .parameter "appendQuotedText"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 225
    iget-wide v8, p1, Lcom/android/email/provider/EmailContent$Message;->mId:J

    invoke-static {p0, v8, v9}, Lcom/android/email/provider/EmailContent$Body;->restoreBodyWithMessageId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Body;

    move-result-object v2

    .line 226
    .local v2, body:Lcom/android/email/provider/EmailContent$Body;
    if-nez v2, :cond_0

    move-object v8, v12

    .line 248
    :goto_0
    return-object v8

    .line 230
    :cond_0
    const/4 v0, 0x0

    .line 231
    .local v0, BodyHtml:Ljava/lang/String;
    iget v3, p1, Lcom/android/email/provider/EmailContent$Message;->mFlags:I

    .line 232
    .local v3, flags:I
    and-int/lit8 v8, v3, 0x1

    if-eqz v8, :cond_4

    move v7, v10

    .line 233
    .local v7, isReply:Z
    :goto_1
    and-int/lit8 v8, v3, 0x2

    if-eqz v8, :cond_5

    move v6, v10

    .line 234
    .local v6, isForward:Z
    :goto_2
    iget-object v8, v2, Lcom/android/email/provider/EmailContent$Body;->mIntroText:Ljava/lang/String;

    if-nez v8, :cond_6

    const-string v8, ""

    move-object v4, v8

    .line 236
    .local v4, intro:Ljava/lang/String;
    :goto_3
    iget-wide v8, p1, Lcom/android/email/provider/EmailContent$Message;->mAccountKey:J

    invoke-static {p0, v8, v9}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v1

    .line 237
    .local v1, acc:Lcom/android/email/provider/EmailContent$Account;
    invoke-virtual {v1, p0}, Lcom/android/email/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "eas"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    .line 239
    .local v5, isExchange:Z
    if-eq v10, v7, :cond_1

    if-ne v10, v6, :cond_2

    .line 241
    :cond_1
    const-string v8, "<"

    const-string v9, "&lt;"

    invoke-virtual {v4, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 242
    const-string v8, ">"

    const-string v9, "&gt;"

    invoke-virtual {v4, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 243
    const-string v8, "\n"

    const-string v9, "<br>"

    invoke-virtual {v4, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 244
    iget-object v8, v2, Lcom/android/email/provider/EmailContent$Body;->mHtmlContent:Ljava/lang/String;

    if-ne v10, p2, :cond_7

    iget-object v9, v2, Lcom/android/email/provider/EmailContent$Body;->mHtmlReply:Ljava/lang/String;

    :goto_4
    invoke-static {v8, v9, v4}, Lcom/android/email/mail/transport/Rfc822Output;->getIntergratedHTML(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 246
    :cond_2
    if-nez v0, :cond_3

    .line 247
    iget-object v0, v2, Lcom/android/email/provider/EmailContent$Body;->mHtmlContent:Ljava/lang/String;

    :cond_3
    move-object v8, v0

    .line 248
    goto :goto_0

    .end local v1           #acc:Lcom/android/email/provider/EmailContent$Account;
    .end local v4           #intro:Ljava/lang/String;
    .end local v5           #isExchange:Z
    .end local v6           #isForward:Z
    .end local v7           #isReply:Z
    :cond_4
    move v7, v11

    .line 232
    goto :goto_1

    .restart local v7       #isReply:Z
    :cond_5
    move v6, v11

    .line 233
    goto :goto_2

    .line 234
    .restart local v6       #isForward:Z
    :cond_6
    iget-object v8, v2, Lcom/android/email/provider/EmailContent$Body;->mIntroText:Ljava/lang/String;

    move-object v4, v8

    goto :goto_3

    .restart local v1       #acc:Lcom/android/email/provider/EmailContent$Account;
    .restart local v4       #intro:Ljava/lang/String;
    .restart local v5       #isExchange:Z
    :cond_7
    move-object v9, v12

    .line 244
    goto :goto_4
.end method

.method private static getEmailPriority(I)Ljava/lang/String;
    .locals 2
    .parameter "value"

    .prologue
    const-string v1, "normal"

    .line 411
    packed-switch p0, :pswitch_data_0

    .line 419
    const-string v0, "normal"

    move-object v0, v1

    :goto_0
    return-object v0

    .line 413
    :pswitch_0
    const-string v0, "low"

    goto :goto_0

    .line 415
    :pswitch_1
    const-string v0, "normal"

    move-object v0, v1

    goto :goto_0

    .line 417
    :pswitch_2
    const-string v0, "high"

    goto :goto_0

    .line 411
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static getIntergratedHTML(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "newHtml"
    .parameter "htmlReply"
    .parameter "IntroText"

    .prologue
    .line 347
    const/4 v1, 0x0

    .line 348
    .local v1, tmpString:Ljava/lang/String;
    const-string v0, "html"

    .line 349
    .local v0, StartTagHTML:Ljava/lang/String;
    const-string v0, "/html"

    .line 350
    .local v0, EndTagHTML:Ljava/lang/String;
    const-string v0, "body"

    .line 351
    .local v0, StartTagBODY:Ljava/lang/String;
    const-string v0, "/body"

    .line 352
    .local v0, EndTagBODY:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuffer;

    .end local v0           #EndTagBODY:Ljava/lang/String;
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 353
    .local v0, IntergratedHTML:Ljava/lang/StringBuffer;
    if-eqz p0, :cond_3

    .line 355
    move-object p0, p0

    .line 356
    .end local v1           #tmpString:Ljava/lang/String;
    .local p0, tmpString:Ljava/lang/String;
    const/4 v1, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "</body>"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-ne v1, v2, :cond_0

    .line 358
    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "</body>"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 361
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<br>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .end local p2
    const-string v1, "<br>"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 363
    if-eqz p1, :cond_1

    .line 365
    const/4 p0, -0x1

    .line 366
    .local p0, startIndexOfBODY:I
    move-object p2, p1

    .line 367
    .local p2, tmpString:Ljava/lang/String;
    const/4 p1, 0x1

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .end local p1
    move-result-object v1

    const-string v2, "<body"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-ne p1, v1, :cond_2

    .line 369
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .end local p0           #startIndexOfBODY:I
    const-string p1, "<body"

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    .line 370
    .local p0, tmp:I
    invoke-virtual {p2, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 371
    .local p0, startBody:Ljava/lang/String;
    const-string p1, ">"

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    .line 372
    .local p1, startIndexOfBODY:I
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .end local p0           #startBody:Ljava/lang/String;
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move p0, p1

    .end local p1           #startIndexOfBODY:I
    .local p0, startIndexOfBODY:I
    :goto_0
    move-object p0, p2

    .line 399
    .end local p2           #tmpString:Ljava/lang/String;
    .local p0, tmpString:Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result p0

    .end local p0           #tmpString:Ljava/lang/String;
    if-gtz p0, :cond_5

    .line 401
    const/4 p0, 0x0

    .line 404
    :goto_2
    return-object p0

    .line 376
    .local p0, startIndexOfBODY:I
    .restart local p2       #tmpString:Ljava/lang/String;
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "</body></html>"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 380
    .restart local v1       #tmpString:Ljava/lang/String;
    .local p0, newHtml:Ljava/lang/String;
    .local p1, htmlReply:Ljava/lang/String;
    .local p2, IntroText:Ljava/lang/String;
    :cond_3
    if-eqz p1, :cond_6

    .line 382
    new-instance p0, Ljava/lang/StringBuilder;

    .end local p0           #newHtml:Ljava/lang/String;
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<br>"

    .end local v1           #tmpString:Ljava/lang/String;
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, "<br>"

    .end local p2           #IntroText:Ljava/lang/String;
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 384
    const/4 p0, -0x1

    .line 385
    .local p0, startIndexOfBODY:I
    move-object p2, p1

    .line 386
    .local p2, tmpString:Ljava/lang/String;
    const/4 p0, 0x1

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .end local p0           #startIndexOfBODY:I
    move-result-object p1

    .end local p1           #htmlReply:Ljava/lang/String;
    const-string v1, "<body"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-ne p0, p1, :cond_4

    .line 388
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string p1, "<body"

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    .line 389
    .local p0, tmp:I
    invoke-virtual {p2, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 390
    .local p0, startBody:Ljava/lang/String;
    const-string p1, ">"

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    .line 391
    .local p1, startIndexOfBODY:I
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .end local p0           #startBody:Ljava/lang/String;
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object p0, p2

    .line 392
    .end local p2           #tmpString:Ljava/lang/String;
    .local p0, tmpString:Ljava/lang/String;
    goto :goto_1

    .line 395
    .end local p0           #tmpString:Ljava/lang/String;
    .end local p1           #startIndexOfBODY:I
    .restart local p2       #tmpString:Ljava/lang/String;
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "</body></html>"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object p0, p2

    .end local p2           #tmpString:Ljava/lang/String;
    .restart local p0       #tmpString:Ljava/lang/String;
    goto/16 :goto_1

    .line 404
    .end local p0           #tmpString:Ljava/lang/String;
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_2

    .restart local v1       #tmpString:Ljava/lang/String;
    .local p0, newHtml:Ljava/lang/String;
    .local p1, htmlReply:Ljava/lang/String;
    .local p2, IntroText:Ljava/lang/String;
    :cond_6
    move-object p0, v1

    .end local v1           #tmpString:Ljava/lang/String;
    .local p0, tmpString:Ljava/lang/String;
    goto/16 :goto_1
.end method

.method public static getIsExchangeAccount()Z
    .locals 1

    .prologue
    .line 1538
    sget-boolean v0, Lcom/android/email/mail/transport/Rfc822Output;->mIsExchangeAccount:Z

    return v0
.end method

.method public static setIsExchangeAccount(Z)V
    .locals 0
    .parameter "isExchangeAcoount"

    .prologue
    .line 1532
    sput-boolean p0, Lcom/android/email/mail/transport/Rfc822Output;->mIsExchangeAccount:Z

    .line 1534
    return-void
.end method

.method private static writeAddressHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "writer"
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1407
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 1409
    invoke-virtual {p0, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 1411
    const-string v0, ": "

    invoke-virtual {p0, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 1413
    invoke-static {p2}, Lcom/android/email/mail/Address;->packedToHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lcom/android/email/mail/internet/MimeUtility;->fold(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 1415
    const-string v0, "\r\n"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 1419
    :cond_0
    return-void
.end method

.method private static writeBoundary(Ljava/io/Writer;Ljava/lang/String;Z)V
    .locals 6
    .parameter "writer"
    .parameter "boundary"
    .parameter "end"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v5, "Rfc8220Output"

    const-string v4, "Boundary : --"

    const-string v3, "--"

    const-string v2, "\r\n"

    .line 1440
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 1441
    if-nez p2, :cond_2

    .line 1443
    const-string v0, "Rfc8220Output"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Boundary : --"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1450
    :cond_0
    :goto_0
    const-string v0, "--"

    invoke-virtual {p0, v3}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 1452
    invoke-virtual {p0, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 1454
    if-eqz p2, :cond_1

    .line 1456
    const-string v0, "--"

    invoke-virtual {p0, v3}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 1460
    :cond_1
    const-string v0, "\r\n"

    invoke-virtual {p0, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 1462
    return-void

    .line 1447
    :cond_2
    const-string v0, "Rfc8220Output"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Boundary : --"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "--\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static writeEncodedHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "writer"
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1373
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 1375
    invoke-virtual {p0, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 1377
    const-string v0, ": "

    invoke-virtual {p0, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 1379
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    invoke-static {p2, v0}, Lcom/android/email/mail/internet/MimeUtility;->foldAndEncode2(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 1381
    const-string v0, "\r\n"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 1385
    :cond_0
    return-void
.end method

.method private static writeHTMLWithHeaders(Ljava/io/Writer;Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 3
    .parameter "writer"
    .parameter "out"
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1522
    const-string v1, "Content-Type"

    const-string v2, "text/html; charset=utf-8"

    invoke-static {p0, v1, v2}, Lcom/android/email/mail/transport/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 1523
    const-string v1, "Content-Transfer-Encoding"

    const-string v2, "base64"

    invoke-static {p0, v1, v2}, Lcom/android/email/mail/transport/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 1524
    const-string v1, "\r\n"

    invoke-virtual {p0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1525
    const-string v1, "UTF-8"

    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 1526
    .local v0, bytes:[B
    invoke-virtual {p0}, Ljava/io/Writer;->flush()V

    .line 1527
    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 1528
    return-void
.end method

.method private static writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "writer"
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v4, ": "

    const-string v3, "\r\n"

    .line 1337
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 1339
    const-string v0, "Rfc8220Output"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1341
    invoke-virtual {p0, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 1343
    const-string v0, ": "

    invoke-virtual {p0, v4}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 1345
    invoke-virtual {p0, p2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 1347
    const-string v0, "\r\n"

    invoke-virtual {p0, v3}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 1351
    :cond_0
    return-void
.end method

.method private static writeOneAttachment(Landroid/content/Context;Ljava/io/Writer;Ljava/io/OutputStream;Lcom/android/email/provider/EmailContent$Attachment;Z)V
    .locals 4
    .parameter "context"
    .parameter "writer"
    .parameter "out"
    .parameter "attachment"
    .parameter "isInline"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1157
    iget-object v0, p3, Lcom/android/email/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/james/mime4j/codec/EncoderUtil;->hasToBeEncoded(Ljava/lang/String;I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1161
    .local v0, ff:Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .end local v0           #ff:Ljava/lang/Boolean;
    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    invoke-static {}, Lcom/android/email/mail/transport/Rfc822Output;->getIsExchangeAccount()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1163
    iget-object v0, p3, Lcom/android/email/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encodeAddressDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1165
    .local v0, encFileName:Ljava/lang/String;
    const-string v1, "Content-Type"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p3, Lcom/android/email/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";\n name=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/android/email/mail/transport/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 1169
    const-string v1, "Content-Transfer-Encoding"

    const-string v2, "base64"

    invoke-static {p1, v1, v2}, Lcom/android/email/mail/transport/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 1175
    iget v1, p3, Lcom/android/email/provider/EmailContent$Attachment;->mFlags:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_0

    .line 1177
    const/4 v1, 0x1

    if-ne v1, p4, :cond_5

    .line 1179
    const-string v1, "Content-Disposition"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "inline;\n filename*=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .end local v0           #encFileName:Ljava/lang/String;
    const-string v2, "\";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n size="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p3, Lcom/android/email/provider/EmailContent$Attachment;->mSize:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v1, v0}, Lcom/android/email/mail/transport/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 1231
    :cond_0
    :goto_0
    const/4 v0, 0x1

    if-ne v0, p4, :cond_1

    .line 1233
    const-string p4, "Content-ID"

    .end local p4
    iget-object v0, p3, Lcom/android/email/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    invoke-static {p1, p4, v0}, Lcom/android/email/mail/transport/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 1235
    :cond_1
    const-string p4, "\r\n"

    invoke-virtual {p1, p4}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 1241
    const/4 v0, 0x0

    .line 1243
    .local v0, inStream:Ljava/io/InputStream;
    const/4 p4, 0x0

    .line 1249
    .local p4, base64Out:Landroid/util/Base64OutputStream;
    :try_start_0
    iget-object v1, p3, Lcom/android/email/provider/EmailContent$Attachment;->mContentBytes:[B

    if-eqz v1, :cond_8

    .line 1251
    new-instance p0, Ljava/io/ByteArrayInputStream;

    .end local p0
    iget-object p3, p3, Lcom/android/email/provider/EmailContent$Attachment;->mContentBytes:[B

    .end local p3
    invoke-direct {p0, p3}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0           #inStream:Ljava/io/InputStream;
    .local p0, inStream:Ljava/io/InputStream;
    move-object p3, p0

    .line 1267
    .end local p0           #inStream:Ljava/io/InputStream;
    .local p3, inStream:Ljava/io/InputStream;
    :goto_1
    :try_start_1
    invoke-virtual {p1}, Ljava/io/Writer;->flush()V

    .line 1269
    new-instance p0, Landroid/util/Base64OutputStream;

    const/16 p1, 0x14

    invoke-direct {p0, p2, p1}, Landroid/util/Base64OutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1275
    .end local p1
    .end local p4           #base64Out:Landroid/util/Base64OutputStream;
    .local p0, base64Out:Landroid/util/Base64OutputStream;
    :try_start_2
    invoke-static {p3, p0}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 1287
    const/16 p1, 0xd

    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write(I)V

    .line 1289
    const/16 p1, 0xa

    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write(I)V

    .line 1291
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 1307
    if-eqz p0, :cond_2

    .line 1309
    invoke-virtual {p0}, Landroid/util/Base64OutputStream;->close()V

    .line 1311
    :cond_2
    if-eqz p3, :cond_3

    .line 1313
    invoke-virtual {p3}, Ljava/io/InputStream;->close()V

    :cond_3
    move-object p1, p3

    .line 1317
    .end local p3           #inStream:Ljava/io/InputStream;
    .local p1, inStream:Ljava/io/InputStream;
    :cond_4
    :goto_2
    return-void

    .line 1186
    .local v0, encFileName:Ljava/lang/String;
    .local p0, context:Landroid/content/Context;
    .local p1, writer:Ljava/io/Writer;
    .local p3, attachment:Lcom/android/email/provider/EmailContent$Attachment;
    .local p4, isInline:Z
    :cond_5
    const-string v1, "Content-Disposition"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attachment;\n filename*=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .end local v0           #encFileName:Ljava/lang/String;
    const-string v2, "\";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n size="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p3, Lcom/android/email/provider/EmailContent$Attachment;->mSize:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v1, v0}, Lcom/android/email/mail/transport/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1199
    :cond_6
    const-string v0, "Content-Type"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p3, Lcom/android/email/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";\n name=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p3, Lcom/android/email/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/android/email/mail/transport/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 1203
    const-string v0, "Content-Transfer-Encoding"

    const-string v1, "base64"

    invoke-static {p1, v0, v1}, Lcom/android/email/mail/transport/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 1209
    iget v0, p3, Lcom/android/email/provider/EmailContent$Attachment;->mFlags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 1211
    const/4 v0, 0x1

    if-ne v0, p4, :cond_7

    .line 1213
    const-string v0, "Content-Disposition"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "inline;\n filename=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p3, Lcom/android/email/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p3, Lcom/android/email/provider/EmailContent$Attachment;->mSize:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/android/email/mail/transport/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1220
    :cond_7
    const-string v0, "Content-Disposition"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "attachment;\n filename=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p3, Lcom/android/email/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p3, Lcom/android/email/provider/EmailContent$Attachment;->mSize:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/android/email/mail/transport/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1257
    .local v0, inStream:Ljava/io/InputStream;
    .local p4, base64Out:Landroid/util/Base64OutputStream;
    :cond_8
    :try_start_3
    iget-object p3, p3, Lcom/android/email/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    .end local p3           #attachment:Lcom/android/email/provider/EmailContent$Attachment;
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    .line 1259
    .local p3, fileUri:Landroid/net/Uri;
    const-string v1, "Rfc8220Output"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file uri : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1261
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .end local p0           #context:Landroid/content/Context;
    invoke-virtual {p0, p3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object p0

    .end local v0           #inStream:Ljava/io/InputStream;
    .local p0, inStream:Ljava/io/InputStream;
    move-object p3, p0

    .end local p0           #inStream:Ljava/io/InputStream;
    .local p3, inStream:Ljava/io/InputStream;
    goto/16 :goto_1

    .line 1301
    .end local p3           #inStream:Ljava/io/InputStream;
    .restart local v0       #inStream:Ljava/io/InputStream;
    :catch_0
    move-exception p0

    move-object p2, p0

    move-object p1, v0

    .end local v0           #inStream:Ljava/io/InputStream;
    .local p1, inStream:Ljava/io/InputStream;
    move-object p0, p4

    .line 1303
    .end local p4           #base64Out:Landroid/util/Base64OutputStream;
    .local p0, base64Out:Landroid/util/Base64OutputStream;
    .local p2, ioe:Ljava/io/IOException;
    :goto_3
    :try_start_4
    new-instance p3, Lcom/android/email/mail/MessagingException;

    const-string p4, "Invalid attachment."

    invoke-direct {p3, p4, p2}, Lcom/android/email/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1307
    :catchall_0
    move-exception p2

    .end local p2           #ioe:Ljava/io/IOException;
    :goto_4
    if-eqz p0, :cond_9

    .line 1309
    invoke-virtual {p0}, Landroid/util/Base64OutputStream;->close()V

    .line 1311
    :cond_9
    if-eqz p1, :cond_a

    .line 1313
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 1307
    :cond_a
    throw p2

    .line 1295
    .end local p0           #base64Out:Landroid/util/Base64OutputStream;
    .restart local v0       #inStream:Ljava/io/InputStream;
    .local p1, writer:Ljava/io/Writer;
    .local p2, out:Ljava/io/OutputStream;
    .restart local p4       #base64Out:Landroid/util/Base64OutputStream;
    :catch_1
    move-exception p0

    move-object p0, p4

    .end local p4           #base64Out:Landroid/util/Base64OutputStream;
    .restart local p0       #base64Out:Landroid/util/Base64OutputStream;
    move-object p1, v0

    .line 1307
    .end local v0           #inStream:Ljava/io/InputStream;
    .local p1, inStream:Ljava/io/InputStream;
    :goto_5
    if-eqz p0, :cond_b

    .line 1309
    invoke-virtual {p0}, Landroid/util/Base64OutputStream;->close()V

    .line 1311
    :cond_b
    if-eqz p1, :cond_4

    .line 1313
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    goto/16 :goto_2

    .line 1307
    .end local p0           #base64Out:Landroid/util/Base64OutputStream;
    .restart local v0       #inStream:Ljava/io/InputStream;
    .local p1, writer:Ljava/io/Writer;
    .restart local p4       #base64Out:Landroid/util/Base64OutputStream;
    :catchall_1
    move-exception p0

    move-object p2, p0

    move-object p1, v0

    .end local v0           #inStream:Ljava/io/InputStream;
    .local p1, inStream:Ljava/io/InputStream;
    move-object p0, p4

    .end local p4           #base64Out:Landroid/util/Base64OutputStream;
    .restart local p0       #base64Out:Landroid/util/Base64OutputStream;
    goto :goto_4

    .end local p0           #base64Out:Landroid/util/Base64OutputStream;
    .end local p1           #inStream:Ljava/io/InputStream;
    .restart local p3       #inStream:Ljava/io/InputStream;
    .restart local p4       #base64Out:Landroid/util/Base64OutputStream;
    :catchall_2
    move-exception p0

    move-object p2, p0

    move-object p1, p3

    .end local p3           #inStream:Ljava/io/InputStream;
    .restart local p1       #inStream:Ljava/io/InputStream;
    move-object p0, p4

    .end local p4           #base64Out:Landroid/util/Base64OutputStream;
    .restart local p0       #base64Out:Landroid/util/Base64OutputStream;
    goto :goto_4

    .end local p1           #inStream:Ljava/io/InputStream;
    .restart local p3       #inStream:Ljava/io/InputStream;
    :catchall_3
    move-exception p1

    move-object p2, p1

    move-object p1, p3

    .end local p3           #inStream:Ljava/io/InputStream;
    .restart local p1       #inStream:Ljava/io/InputStream;
    goto :goto_4

    .line 1301
    .end local p0           #base64Out:Landroid/util/Base64OutputStream;
    .end local p1           #inStream:Ljava/io/InputStream;
    .restart local p3       #inStream:Ljava/io/InputStream;
    .restart local p4       #base64Out:Landroid/util/Base64OutputStream;
    :catch_2
    move-exception p0

    move-object p2, p0

    move-object p1, p3

    .end local p3           #inStream:Ljava/io/InputStream;
    .restart local p1       #inStream:Ljava/io/InputStream;
    move-object p0, p4

    .end local p4           #base64Out:Landroid/util/Base64OutputStream;
    .restart local p0       #base64Out:Landroid/util/Base64OutputStream;
    goto :goto_3

    .end local p1           #inStream:Ljava/io/InputStream;
    .restart local p3       #inStream:Ljava/io/InputStream;
    :catch_3
    move-exception p1

    move-object p2, p1

    move-object p1, p3

    .end local p3           #inStream:Ljava/io/InputStream;
    .restart local p1       #inStream:Ljava/io/InputStream;
    goto :goto_3

    .line 1295
    .end local p0           #base64Out:Landroid/util/Base64OutputStream;
    .end local p1           #inStream:Ljava/io/InputStream;
    .restart local p3       #inStream:Ljava/io/InputStream;
    .restart local p4       #base64Out:Landroid/util/Base64OutputStream;
    :catch_4
    move-exception p0

    move-object p0, p4

    .end local p4           #base64Out:Landroid/util/Base64OutputStream;
    .restart local p0       #base64Out:Landroid/util/Base64OutputStream;
    move-object p1, p3

    .end local p3           #inStream:Ljava/io/InputStream;
    .restart local p1       #inStream:Ljava/io/InputStream;
    goto :goto_5

    .end local p1           #inStream:Ljava/io/InputStream;
    .restart local p3       #inStream:Ljava/io/InputStream;
    :catch_5
    move-exception p1

    move-object p1, p3

    .end local p3           #inStream:Ljava/io/InputStream;
    .restart local p1       #inStream:Ljava/io/InputStream;
    goto :goto_5
.end method

.method private static writeTextWithHeaders(Ljava/io/Writer;Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 3
    .parameter "writer"
    .parameter "out"
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1492
    const-string v1, "Content-Type"

    const-string v2, "text/plain; charset=utf-8"

    invoke-static {p0, v1, v2}, Lcom/android/email/mail/transport/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 1494
    const-string v1, "Content-Transfer-Encoding"

    const-string v2, "base64"

    invoke-static {p0, v1, v2}, Lcom/android/email/mail/transport/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 1496
    const-string v1, "\r\n"

    invoke-virtual {p0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1498
    const-string v1, "UTF-8"

    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 1500
    .local v0, bytes:[B
    invoke-virtual {p0}, Ljava/io/Writer;->flush()V

    .line 1502
    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 1504
    return-void
.end method

.method public static writeTo(Landroid/content/Context;JLjava/io/OutputStream;ZZ)V
    .locals 17
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 550
    invoke-static/range {p0 .. p2}, Lcom/android/email/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Message;

    move-result-object v11

    .line 551
    if-nez v11, :cond_0

    .line 1142
    :goto_0
    return-void

    .line 755
    :cond_0
    new-instance v12, Ljava/io/BufferedOutputStream;

    const/16 v5, 0x400

    move-object v0, v12

    move-object/from16 v1, p3

    move v2, v5

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 756
    new-instance v13, Ljava/io/OutputStreamWriter;

    invoke-direct {v13, v12}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 761
    sget-object v5, Lcom/android/email/mail/transport/Rfc822Output;->mDateFormat:Ljava/text/SimpleDateFormat;

    new-instance v6, Ljava/util/Date;

    iget-wide v7, v11, Lcom/android/email/provider/EmailContent$Message;->mTimeStamp:J

    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    .line 762
    const-string v6, "Date"

    invoke-static {v13, v6, v5}, Lcom/android/email/mail/transport/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    const-string v5, "Subject"

    iget-object v6, v11, Lcom/android/email/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    invoke-static {v13, v5, v6}, Lcom/android/email/mail/transport/Rfc822Output;->writeEncodedHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    const-string v5, "Message-ID"

    iget-object v6, v11, Lcom/android/email/provider/EmailContent$Message;->mMessageId:Ljava/lang/String;

    invoke-static {v13, v5, v6}, Lcom/android/email/mail/transport/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    iget v5, v11, Lcom/android/email/provider/EmailContent$Message;->mImportance:I

    invoke-static {v5}, Lcom/android/email/mail/transport/Rfc822Output;->getEmailPriority(I)Ljava/lang/String;

    move-result-object v5

    .line 768
    const-string v6, "Importance"

    invoke-static {v13, v6, v5}, Lcom/android/email/mail/transport/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    const-string v6, "Rfc8220Output"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "this is the value returned from rfc822 = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 770
    const-string v5, "Rfc8220Output"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "writing mail with new importance = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v11, Lcom/android/email/provider/EmailContent$Message;->mImportance:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    const-string v5, "From"

    iget-object v6, v11, Lcom/android/email/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    invoke-static {v13, v5, v6}, Lcom/android/email/mail/transport/Rfc822Output;->writeAddressHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 773
    const-string v5, "To"

    iget-object v6, v11, Lcom/android/email/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    invoke-static {v13, v5, v6}, Lcom/android/email/mail/transport/Rfc822Output;->writeAddressHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 774
    const-string v5, "Cc"

    iget-object v6, v11, Lcom/android/email/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    invoke-static {v13, v5, v6}, Lcom/android/email/mail/transport/Rfc822Output;->writeAddressHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 779
    if-eqz p5, :cond_1

    .line 780
    const-string p5, "Bcc"

    iget-object v5, v11, Lcom/android/email/provider/EmailContent$Message;->mBcc:Ljava/lang/String;

    move-object v0, v13

    move-object/from16 v1, p5

    move-object v2, v5

    invoke-static {v0, v1, v2}, Lcom/android/email/mail/transport/Rfc822Output;->writeAddressHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    :cond_1
    const-string p5, "Reply-To"

    iget-object v5, v11, Lcom/android/email/provider/EmailContent$Message;->mReplyTo:Ljava/lang/String;

    move-object v0, v13

    move-object/from16 v1, p5

    move-object v2, v5

    invoke-static {v0, v1, v2}, Lcom/android/email/mail/transport/Rfc822Output;->writeAddressHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    const-string p5, "MIME-Version"

    const-string v5, "1.0"

    move-object v0, v13

    move-object/from16 v1, p5

    move-object v2, v5

    invoke-static {v0, v1, v2}, Lcom/android/email/mail/transport/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    move-object/from16 v0, p0

    move-object v1, v11

    move/from16 v2, p4

    invoke-static {v0, v1, v2}, Lcom/android/email/mail/transport/Rfc822Output;->buildBodyText(Landroid/content/Context;Lcom/android/email/provider/EmailContent$Message;Z)Ljava/lang/String;

    move-result-object p5

    .line 788
    move-object/from16 v0, p0

    move-object v1, v11

    move/from16 v2, p4

    invoke-static {v0, v1, v2}, Lcom/android/email/mail/transport/Rfc822Output;->buildBodyTextHtml(Landroid/content/Context;Lcom/android/email/provider/EmailContent$Message;Z)Ljava/lang/String;

    move-result-object v14

    .line 790
    sget-object v5, Lcom/android/email/provider/EmailContent$Attachment;->MESSAGE_ID_URI:Landroid/net/Uri;

    move-object v0, v5

    move-wide/from16 v1, p1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 791
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v7, Lcom/android/email/provider/EmailContent$Attachment;->CONTENT_PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    .line 796
    const/4 v5, 0x0

    .line 797
    const/4 v6, 0x0

    .line 798
    :try_start_0
    move-object v0, v11

    iget-boolean v0, v0, Lcom/android/email/provider/EmailContent$Message;->mFlagAttachment:Z

    move/from16 p1, v0

    invoke-static/range {p1 .. p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 799
    const/4 v7, 0x0

    .line 800
    const/4 v8, 0x0

    .line 801
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "--_com.android.email_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 803
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getCount()I

    move-result v10

    .line 804
    const/4 v11, 0x0

    .line 805
    const/4 v15, 0x1

    if-ne v15, v10, :cond_2

    .line 807
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 808
    const/16 v11, 0xa

    move-object/from16 v0, p2

    move v1, v11

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 811
    :cond_2
    const/4 v15, 0x1

    if-ne v10, v15, :cond_7

    and-int/lit8 v10, v11, 0x1

    if-eqz v10, :cond_7

    .line 814
    const-string p1, "alternative"

    .line 816
    const-string p4, "Content-Type"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "multipart/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v5, "; boundary=\""

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    move-object/from16 v0, p1

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v5, "\""

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    move-object v0, v13

    move-object/from16 v1, p4

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2}, Lcom/android/email/mail/transport/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 819
    const-string p1, "\r\n"

    move-object v0, v13

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 824
    if-nez p5, :cond_3

    if-eqz v14, :cond_4

    .line 825
    :cond_3
    const/16 p1, 0x0

    move-object v0, v13

    move-object v1, v9

    move/from16 v2, p1

    invoke-static {v0, v1, v2}, Lcom/android/email/mail/transport/Rfc822Output;->writeBoundary(Ljava/io/Writer;Ljava/lang/String;Z)V

    .line 826
    if-eqz v14, :cond_6

    .line 827
    invoke-static {v13, v12, v14}, Lcom/android/email/mail/transport/Rfc822Output;->writeHTMLWithHeaders(Ljava/io/Writer;Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 833
    :cond_4
    :goto_1
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 834
    const-class p1, Lcom/android/email/provider/EmailContent$Attachment;

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/email/provider/EmailContent$Attachment;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/email/provider/EmailContent;

    move-result-object p1

    check-cast p1, Lcom/android/email/provider/EmailContent$Attachment;

    .line 836
    const/16 p4, 0x0

    move-object v0, v13

    move-object v1, v9

    move/from16 v2, p4

    invoke-static {v0, v1, v2}, Lcom/android/email/mail/transport/Rfc822Output;->writeBoundary(Ljava/io/Writer;Ljava/lang/String;Z)V

    .line 837
    const/16 p4, 0x0

    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v12

    move-object/from16 v3, p1

    move/from16 v4, p4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/email/mail/transport/Rfc822Output;->writeOneAttachment(Landroid/content/Context;Ljava/io/Writer;Ljava/io/OutputStream;Lcom/android/email/provider/EmailContent$Attachment;Z)V

    .line 838
    const-string p1, "\r\n"

    move-object v0, v13

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 839
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-nez p1, :cond_4

    .line 842
    const/16 p0, 0x1

    move-object v0, v13

    move-object v1, v9

    move/from16 v2, p0

    invoke-static {v0, v1, v2}, Lcom/android/email/mail/transport/Rfc822Output;->writeBoundary(Ljava/io/Writer;Ljava/lang/String;Z)V

    .line 843
    const-string p0, "\r\n"

    move-object v0, v13

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1006
    :cond_5
    :goto_2
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->close()V

    .line 1010
    invoke-virtual {v13}, Ljava/io/Writer;->flush()V

    .line 1011
    invoke-virtual/range {p3 .. p3}, Ljava/io/OutputStream;->flush()V

    goto/16 :goto_0

    .line 829
    :cond_6
    :try_start_1
    move-object v0, v13

    move-object v1, v12

    move-object/from16 v2, p5

    invoke-static {v0, v1, v2}, Lcom/android/email/mail/transport/Rfc822Output;->writeTextWithHeaders(Ljava/io/Writer;Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 999
    :catch_0
    move-exception p0

    .line 1001
    :try_start_2
    const-class p1, Lcom/android/email/mail/transport/Rfc822Output;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string p3, "writeto() occurred Exception. Cannot send this message now."

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1003
    new-instance p0, Ljava/io/IOException;

    invoke-direct/range {p0 .. p0}, Ljava/io/IOException;-><init>()V

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1006
    :catchall_0
    move-exception p0

    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->close()V

    throw p0

    .line 847
    :cond_7
    const/4 v10, 0x1

    :try_start_3
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    move v0, v10

    move/from16 v1, p1

    if-eq v0, v1, :cond_13

    .line 849
    const-string p1, "alternative"

    move/from16 v16, v7

    move-object/from16 v7, p1

    move/from16 p1, v16

    .line 876
    :goto_3
    const-string v8, "Content-Type"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "multipart/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "; boundary=\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v13, v8, v10}, Lcom/android/email/mail/transport/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 878
    const-string v8, "\r\n"

    invoke-virtual {v13, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 879
    const/4 v8, 0x0

    invoke-static {v13, v9, v8}, Lcom/android/email/mail/transport/Rfc822Output;->writeBoundary(Ljava/io/Writer;Ljava/lang/String;Z)V

    .line 881
    const/4 v8, 0x1

    const-string v10, "mixed"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-ne v8, v10, :cond_8

    .line 883
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "--_com.android.email_"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 884
    const-string v8, "Content-Type"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "multipart/alternative; boundary=\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v13, v8, v10}, Lcom/android/email/mail/transport/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 886
    const-string v8, "\r\n"

    invoke-virtual {v13, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 889
    :cond_8
    if-nez p5, :cond_9

    .line 891
    const-string p5, ""

    .line 893
    :cond_9
    if-eqz v5, :cond_a

    .line 895
    const/4 v8, 0x0

    invoke-static {v13, v5, v8}, Lcom/android/email/mail/transport/Rfc822Output;->writeBoundary(Ljava/io/Writer;Ljava/lang/String;Z)V

    .line 897
    :cond_a
    move-object v0, v13

    move-object v1, v12

    move-object/from16 v2, p5

    invoke-static {v0, v1, v2}, Lcom/android/email/mail/transport/Rfc822Output;->writeTextWithHeaders(Ljava/io/Writer;Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 898
    const-string v8, "\r\n"

    invoke-virtual {v13, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 900
    if-nez v14, :cond_1b

    .line 902
    if-eqz p5, :cond_16

    .line 904
    const-string v8, "<"

    const-string v10, "&lt;"

    move-object/from16 v0, p5

    move-object v1, v8

    move-object v2, v10

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    .line 905
    const-string v8, ">"

    const-string v10, "&gt;"

    move-object/from16 v0, p5

    move-object v1, v8

    move-object v2, v10

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    .line 906
    const-string v8, "\n"

    const-string v10, "<br>"

    move-object/from16 v0, p5

    move-object v1, v8

    move-object v2, v10

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    .line 907
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "<html><head></head><body><div style=\"word-break;keep-all;\">"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v0, v8

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    const-string v8, "</div></body></html>"

    move-object/from16 v0, p5

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual/range {p5 .. p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    .line 914
    :goto_4
    if-eqz v5, :cond_17

    .line 916
    const/4 v8, 0x0

    invoke-static {v13, v5, v8}, Lcom/android/email/mail/transport/Rfc822Output;->writeBoundary(Ljava/io/Writer;Ljava/lang/String;Z)V

    .line 923
    :goto_5
    if-lez p1, :cond_b

    .line 925
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct/range {p1 .. p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "--_com.android.email_"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    move-object/from16 v0, p1

    move-wide v1, v10

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 926
    const-string v6, "Content-Type"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "multipart/relative; boundary=\""

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v0, v8

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "\""

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v13, v6, v8}, Lcom/android/email/mail/transport/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 928
    const-string v6, "\r\n"

    invoke-virtual {v13, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    move-object/from16 v6, p1

    .line 931
    :cond_b
    if-eqz v6, :cond_c

    .line 933
    const/16 p1, 0x0

    move-object v0, v13

    move-object v1, v6

    move/from16 v2, p1

    invoke-static {v0, v1, v2}, Lcom/android/email/mail/transport/Rfc822Output;->writeBoundary(Ljava/io/Writer;Ljava/lang/String;Z)V

    .line 935
    :cond_c
    move-object v0, v13

    move-object v1, v12

    move-object/from16 v2, p5

    invoke-static {v0, v1, v2}, Lcom/android/email/mail/transport/Rfc822Output;->writeHTMLWithHeaders(Ljava/io/Writer;Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 936
    const-string p1, "\r\n"

    move-object v0, v13

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 938
    if-eqz v6, :cond_f

    .line 940
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 942
    :cond_d
    const-class p1, Lcom/android/email/provider/EmailContent$Attachment;

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/email/provider/EmailContent$Attachment;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/email/provider/EmailContent;

    move-result-object p1

    check-cast p1, Lcom/android/email/provider/EmailContent$Attachment;

    .line 943
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    move-object v8, v0

    if-eqz v8, :cond_e

    if-eqz p5, :cond_e

    const/4 v8, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    move-object v10, v0

    move-object/from16 v0, p5

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-ne v8, v10, :cond_e

    .line 945
    invoke-static {}, Lcom/android/email/mail/transport/Rfc822Output;->getIsExchangeAccount()Z

    move-result v8

    if-eqz v8, :cond_18

    if-nez p4, :cond_18

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/email/provider/EmailContent$Attachment;->mFlags:I

    move v8, v0

    and-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_18

    .line 954
    :cond_e
    :goto_6
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-nez p1, :cond_d

    .line 955
    const/16 p1, 0x1

    move-object v0, v13

    move-object v1, v6

    move/from16 v2, p1

    invoke-static {v0, v1, v2}, Lcom/android/email/mail/transport/Rfc822Output;->writeBoundary(Ljava/io/Writer;Ljava/lang/String;Z)V

    .line 956
    const-string p1, "\r\n"

    move-object v0, v13

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 959
    :cond_f
    if-eqz v5, :cond_19

    .line 961
    const/16 p1, 0x1

    move-object v0, v13

    move-object v1, v5

    move/from16 v2, p1

    invoke-static {v0, v1, v2}, Lcom/android/email/mail/transport/Rfc822Output;->writeBoundary(Ljava/io/Writer;Ljava/lang/String;Z)V

    .line 962
    const-string p1, "\r\n"

    move-object v0, v13

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    move-object v5, v9

    .line 972
    :goto_7
    const/16 p1, 0x1

    const-string v6, "mixed"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    move/from16 v0, p1

    move v1, v6

    if-ne v0, v1, :cond_5

    .line 974
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 976
    :cond_10
    const-class p1, Lcom/android/email/provider/EmailContent$Attachment;

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/email/provider/EmailContent$Attachment;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/email/provider/EmailContent;

    move-result-object p1

    check-cast p1, Lcom/android/email/provider/EmailContent$Attachment;

    .line 977
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    move-object v6, v0

    if-eqz v6, :cond_11

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    move-object v6, v0

    if-eqz v6, :cond_12

    if-eqz p5, :cond_12

    const/4 v6, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    move-object v7, v0

    move-object/from16 v0, p5

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eq v6, v7, :cond_12

    .line 980
    :cond_11
    invoke-static {}, Lcom/android/email/mail/transport/Rfc822Output;->getIsExchangeAccount()Z

    move-result v6

    if-eqz v6, :cond_1a

    if-nez p4, :cond_1a

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/email/provider/EmailContent$Attachment;->mFlags:I

    move v6, v0

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_1a

    .line 989
    :cond_12
    :goto_8
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-nez p1, :cond_10

    .line 991
    const/16 p0, 0x1

    move-object v0, v13

    move-object v1, v5

    move/from16 v2, p0

    invoke-static {v0, v1, v2}, Lcom/android/email/mail/transport/Rfc822Output;->writeBoundary(Ljava/io/Writer;Ljava/lang/String;Z)V

    .line 992
    const-string p0, "\r\n"

    move-object v0, v13

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 853
    :cond_13
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToFirst()Z

    move/from16 v16, v8

    move v8, v7

    move/from16 v7, v16

    .line 855
    :goto_9
    const-class p1, Lcom/android/email/provider/EmailContent$Attachment;

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/email/provider/EmailContent$Attachment;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/email/provider/EmailContent;

    move-result-object p1

    check-cast p1, Lcom/android/email/provider/EmailContent$Attachment;

    .line 856
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    move-object v10, v0

    if-eqz v10, :cond_14

    if-eqz v14, :cond_14

    const/4 v10, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    move-object/from16 p1, v0

    move-object v0, v14

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    move v0, v10

    move/from16 v1, p1

    if-ne v0, v1, :cond_14

    .line 858
    add-int/lit8 p1, v8, 0x1

    move/from16 v16, v7

    move/from16 v7, p1

    move/from16 p1, v16

    .line 864
    :goto_a
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-nez v8, :cond_1c

    .line 866
    if-lez p1, :cond_15

    .line 868
    const-string p1, "mixed"

    move/from16 v16, v7

    move-object/from16 v7, p1

    move/from16 p1, v16

    goto/16 :goto_3

    .line 862
    :cond_14
    add-int/lit8 p1, v7, 0x1

    move v7, v8

    goto :goto_a

    .line 872
    :cond_15
    const-string p1, "alternative"

    move/from16 v16, v7

    move-object/from16 v7, p1

    move/from16 p1, v16

    goto/16 :goto_3

    .line 911
    :cond_16
    const-string p5, "<html><head></head><body><div style=\"word-break;keep-all;\"></div></body></html>"

    goto/16 :goto_4

    .line 920
    :cond_17
    const/4 v8, 0x0

    invoke-static {v13, v9, v8}, Lcom/android/email/mail/transport/Rfc822Output;->writeBoundary(Ljava/io/Writer;Ljava/lang/String;Z)V

    goto/16 :goto_5

    .line 950
    :cond_18
    const/4 v8, 0x0

    invoke-static {v13, v6, v8}, Lcom/android/email/mail/transport/Rfc822Output;->writeBoundary(Ljava/io/Writer;Ljava/lang/String;Z)V

    .line 951
    const/4 v8, 0x1

    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v12

    move-object/from16 v3, p1

    move v4, v8

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/email/mail/transport/Rfc822Output;->writeOneAttachment(Landroid/content/Context;Ljava/io/Writer;Ljava/io/OutputStream;Lcom/android/email/provider/EmailContent$Attachment;Z)V

    .line 952
    const-string p1, "\r\n"

    move-object v0, v13

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 967
    :cond_19
    const/16 p1, 0x1

    move-object v0, v13

    move-object v1, v9

    move/from16 v2, p1

    invoke-static {v0, v1, v2}, Lcom/android/email/mail/transport/Rfc822Output;->writeBoundary(Ljava/io/Writer;Ljava/lang/String;Z)V

    .line 968
    const-string p1, "\r\n"

    move-object v0, v13

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 969
    const/16 p1, 0x0

    move-object/from16 v5, p1

    goto/16 :goto_7

    .line 985
    :cond_1a
    const/4 v6, 0x0

    invoke-static {v13, v5, v6}, Lcom/android/email/mail/transport/Rfc822Output;->writeBoundary(Ljava/io/Writer;Ljava/lang/String;Z)V

    .line 986
    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v12

    move-object/from16 v3, p1

    move v4, v6

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/email/mail/transport/Rfc822Output;->writeOneAttachment(Landroid/content/Context;Ljava/io/Writer;Ljava/io/OutputStream;Lcom/android/email/provider/EmailContent$Attachment;Z)V

    .line 987
    const-string p1, "\r\n"

    move-object v0, v13

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_8

    :cond_1b
    move-object/from16 p5, v14

    goto/16 :goto_4

    :cond_1c
    move v8, v7

    move/from16 v7, p1

    goto/16 :goto_9
.end method
