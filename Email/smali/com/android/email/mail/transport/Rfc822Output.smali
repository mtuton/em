.class public Lcom/android/email/mail/transport/Rfc822Output;
.super Ljava/lang/Object;
.source "Rfc822Output.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/mail/transport/Rfc822Output$BodyTextHtml;
    }
.end annotation


# static fields
.field private static final PATTERN_ENDLINE_CRLF:Ljava/util/regex/Pattern; = null

.field private static final PATTERN_START_OF_LINE:Ljava/util/regex/Pattern; = null

.field private static final PRIORITY_HIGH:Ljava/lang/String; = "high"

.field private static final PRIORITY_LOW:Ljava/lang/String; = "low"

.field private static final PRIORITY_NORMAL:Ljava/lang/String; = "normal"

.field private static final TAG:Ljava/lang/String; = "Rfc8220Output >>"

.field static final mDateFormat:Ljava/text/SimpleDateFormat;

.field private static mIsExchangeAccount:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 67
    const-string v0, "(?m)^"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/email/mail/transport/Rfc822Output;->PATTERN_START_OF_LINE:Ljava/util/regex/Pattern;

    .line 68
    const-string v0, "\r\n"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/email/mail/transport/Rfc822Output;->PATTERN_ENDLINE_CRLF:Ljava/util/regex/Pattern;

    .line 86
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE, dd MMM yyyy HH:mm:ss Z"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/android/email/mail/transport/Rfc822Output;->mDateFormat:Ljava/text/SimpleDateFormat;

    .line 89
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/email/mail/transport/Rfc822Output;->mIsExchangeAccount:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    return-void
.end method

.method static buildBodyText(Landroid/content/Context;Lcom/android/email/provider/EmailContent$Message;Z)Ljava/lang/String;
    .locals 12
    .parameter "context"
    .parameter "message"
    .parameter "appendQuotedText"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 93
    iget-wide v8, p1, Lcom/android/email/provider/EmailContent$Message;->mId:J

    invoke-static {p0, v8, v9}, Lcom/android/email/provider/EmailContent$Body;->restoreBodyWithMessageId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Body;

    move-result-object v0

    .line 94
    .local v0, body:Lcom/android/email/provider/EmailContent$Body;
    if-nez v0, :cond_0

    .line 95
    const/4 v8, 0x0

    .line 135
    :goto_0
    return-object v8

    .line 98
    :cond_0
    iget-object v7, v0, Lcom/android/email/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;

    .line 99
    .local v7, text:Ljava/lang/String;
    iget v1, p1, Lcom/android/email/provider/EmailContent$Message;->mFlags:I

    .line 100
    .local v1, flags:I
    and-int/lit8 v8, v1, 0x1

    if-eqz v8, :cond_2

    move v4, v11

    .line 101
    .local v4, isReply:Z
    :goto_1
    and-int/lit8 v8, v1, 0x2

    if-eqz v8, :cond_3

    move v3, v11

    .line 102
    .local v3, isForward:Z
    :goto_2
    iget-object v8, v0, Lcom/android/email/provider/EmailContent$Body;->mIntroText:Ljava/lang/String;

    if-nez v8, :cond_4

    const-string v8, ""

    move-object v2, v8

    .line 103
    .local v2, intro:Ljava/lang/String;
    :goto_3
    if-nez p2, :cond_6

    .line 109
    if-eqz v4, :cond_5

    .line 110
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :cond_1
    :goto_4
    move-object v8, v7

    .line 114
    goto :goto_0

    .end local v2           #intro:Ljava/lang/String;
    .end local v3           #isForward:Z
    .end local v4           #isReply:Z
    :cond_2
    move v4, v10

    .line 100
    goto :goto_1

    .restart local v4       #isReply:Z
    :cond_3
    move v3, v10

    .line 101
    goto :goto_2

    .line 102
    .restart local v3       #isForward:Z
    :cond_4
    iget-object v8, v0, Lcom/android/email/provider/EmailContent$Body;->mIntroText:Ljava/lang/String;

    move-object v2, v8

    goto :goto_3

    .line 111
    .restart local v2       #intro:Ljava/lang/String;
    :cond_5
    if-eqz v3, :cond_1

    .line 112
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_4

    .line 117
    :cond_6
    iget-object v6, v0, Lcom/android/email/provider/EmailContent$Body;->mTextReply:Ljava/lang/String;

    .line 118
    .local v6, quotedText:Ljava/lang/String;
    if-eqz v6, :cond_7

    .line 120
    sget-object v8, Lcom/android/email/mail/transport/Rfc822Output;->PATTERN_ENDLINE_CRLF:Ljava/util/regex/Pattern;

    invoke-virtual {v8, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 121
    .local v5, matcher:Ljava/util/regex/Matcher;
    const-string v8, "\n"

    invoke-virtual {v5, v8}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 123
    .end local v5           #matcher:Ljava/util/regex/Matcher;
    :cond_7
    if-eqz v4, :cond_9

    .line 124
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 125
    if-eqz v6, :cond_8

    .line 126
    sget-object v8, Lcom/android/email/mail/transport/Rfc822Output;->PATTERN_START_OF_LINE:Ljava/util/regex/Pattern;

    invoke-virtual {v8, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 127
    .restart local v5       #matcher:Ljava/util/regex/Matcher;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ">"

    invoke-virtual {v5, v9}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .end local v5           #matcher:Ljava/util/regex/Matcher;
    :cond_8
    :goto_5
    move-object v8, v7

    .line 135
    goto/16 :goto_0

    .line 129
    :cond_9
    if-eqz v3, :cond_8

    .line 130
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 131
    if-eqz v6, :cond_8

    .line 132
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_5
.end method

.method static buildBodyTextHtml(Landroid/content/Context;Lcom/android/email/provider/EmailContent$Message;Z)Lcom/android/email/mail/transport/Rfc822Output$BodyTextHtml;
    .locals 7
    .parameter "context"
    .parameter "message"
    .parameter "appendQuotedText"

    .prologue
    .line 141
    iget-wide v0, p1, Lcom/android/email/provider/EmailContent$Message;->mId:J

    invoke-static {p0, v0, v1}, Lcom/android/email/provider/EmailContent$Body;->restoreBodyWithMessageId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Body;

    move-result-object p0

    .line 142
    .local p0, body:Lcom/android/email/provider/EmailContent$Body;
    if-nez p0, :cond_0

    .line 143
    const/4 p0, 0x0

    .line 233
    .end local p0           #body:Lcom/android/email/provider/EmailContent$Body;
    .end local p1
    .end local p2
    :goto_0
    return-object p0

    .line 145
    .restart local p0       #body:Lcom/android/email/provider/EmailContent$Body;
    .restart local p1
    .restart local p2
    :cond_0
    new-instance v0, Lcom/android/email/mail/transport/Rfc822Output$BodyTextHtml;

    invoke-direct {v0}, Lcom/android/email/mail/transport/Rfc822Output$BodyTextHtml;-><init>()V

    .line 147
    .local v0, bodyText:Lcom/android/email/mail/transport/Rfc822Output$BodyTextHtml;
    const/4 v2, 0x0

    .line 148
    .local v2, isSelfHtml:Z
    const/4 v1, 0x0

    .line 149
    .local v1, isParentHtml:Z
    iget-object v3, p0, Lcom/android/email/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/email/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1c

    :cond_1
    iget-object v3, p0, Lcom/android/email/provider/EmailContent$Body;->mHtmlContent:Ljava/lang/String;

    if-eqz v3, :cond_1c

    iget-object v3, p0, Lcom/android/email/provider/EmailContent$Body;->mHtmlContent:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1c

    .line 150
    const/4 v2, 0x1

    move v4, v2

    .line 151
    .end local v2           #isSelfHtml:Z
    .local v4, isSelfHtml:Z
    :goto_1
    iget-object v2, p0, Lcom/android/email/provider/EmailContent$Body;->mTextReply:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/email/provider/EmailContent$Body;->mTextReply:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1b

    :cond_2
    iget-object v2, p0, Lcom/android/email/provider/EmailContent$Body;->mHtmlReply:Ljava/lang/String;

    if-eqz v2, :cond_1b

    iget-object v2, p0, Lcom/android/email/provider/EmailContent$Body;->mHtmlReply:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1b

    .line 152
    const/4 v1, 0x1

    move v2, v1

    .line 153
    .end local v1           #isParentHtml:Z
    .local v2, isParentHtml:Z
    :goto_2
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    .line 155
    .local v1, text:Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 156
    iget-object v1, p0, Lcom/android/email/provider/EmailContent$Body;->mHtmlContent:Ljava/lang/String;

    move-object v5, v1

    .line 159
    .end local v1           #text:Ljava/lang/String;
    .local v5, text:Ljava/lang/String;
    :goto_3
    iget p1, p1, Lcom/android/email/provider/EmailContent$Message;->mFlags:I

    .line 160
    .local p1, flags:I
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    move v3, v1

    .line 161
    .local v3, isReply:Z
    :goto_4
    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_5

    .end local p1           #flags:I
    const/4 p1, 0x1

    move v1, p1

    .line 162
    .local v1, isForward:Z
    :goto_5
    iget-object p1, p0, Lcom/android/email/provider/EmailContent$Body;->mIntroText:Ljava/lang/String;

    if-nez p1, :cond_6

    const-string p1, ""

    .line 164
    .local p1, intro:Ljava/lang/String;
    :goto_6
    if-nez p2, :cond_8

    .line 170
    if-eqz v3, :cond_7

    .line 171
    new-instance p0, Ljava/lang/StringBuilder;

    .end local p0           #body:Lcom/android/email/provider/EmailContent$Body;
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 175
    .end local v5           #text:Ljava/lang/String;
    .end local p1           #intro:Ljava/lang/String;
    .local p0, text:Ljava/lang/String;
    :goto_7
    iput-object p0, v0, Lcom/android/email/mail/transport/Rfc822Output$BodyTextHtml;->bodyString:Ljava/lang/String;

    .line 176
    iput-boolean v4, v0, Lcom/android/email/mail/transport/Rfc822Output$BodyTextHtml;->isHtml:Z

    move-object p0, v0

    .line 177
    goto :goto_0

    .line 158
    .end local v3           #isReply:Z
    .local v1, text:Ljava/lang/String;
    .local p0, body:Lcom/android/email/provider/EmailContent$Body;
    .local p1, message:Lcom/android/email/provider/EmailContent$Message;
    :cond_3
    iget-object v1, p0, Lcom/android/email/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;

    move-object v5, v1

    .end local v1           #text:Ljava/lang/String;
    .restart local v5       #text:Ljava/lang/String;
    goto :goto_3

    .line 160
    .local p1, flags:I
    :cond_4
    const/4 v1, 0x0

    move v3, v1

    goto :goto_4

    .line 161
    .end local p1           #flags:I
    .restart local v3       #isReply:Z
    :cond_5
    const/4 p1, 0x0

    move v1, p1

    goto :goto_5

    .line 162
    .local v1, isForward:Z
    :cond_6
    iget-object p1, p0, Lcom/android/email/provider/EmailContent$Body;->mIntroText:Ljava/lang/String;

    goto :goto_6

    .line 172
    .local p1, intro:Ljava/lang/String;
    :cond_7
    if-eqz v1, :cond_1a

    .line 173
    new-instance p0, Ljava/lang/StringBuilder;

    .end local p0           #body:Lcom/android/email/provider/EmailContent$Body;
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "\r\n"

    .end local p1           #intro:Ljava/lang/String;
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .end local v5           #text:Ljava/lang/String;
    .local p0, text:Ljava/lang/String;
    goto :goto_7

    .line 182
    .restart local v5       #text:Ljava/lang/String;
    .local p0, body:Lcom/android/email/provider/EmailContent$Body;
    .restart local p1       #intro:Ljava/lang/String;
    :cond_8
    if-eqz v2, :cond_d

    .line 184
    if-nez v4, :cond_19

    .line 185
    new-instance p2, Ljava/lang/StringBuilder;

    .end local p2
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<html><body><p>"

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v5, "</p></body></html>"

    .end local v5           #text:Ljava/lang/String;
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 186
    .local p2, text:Ljava/lang/String;
    :goto_8
    iget-object p0, p0, Lcom/android/email/provider/EmailContent$Body;->mHtmlReply:Ljava/lang/String;

    .local p0, quotedText:Ljava/lang/String;
    move-object v5, p2

    .line 191
    .end local p2           #text:Ljava/lang/String;
    .restart local v5       #text:Ljava/lang/String;
    :goto_9
    if-eqz p0, :cond_18

    .line 193
    sget-object p2, Lcom/android/email/mail/transport/Rfc822Output;->PATTERN_ENDLINE_CRLF:Ljava/util/regex/Pattern;

    invoke-virtual {p2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 194
    .local p0, matcher:Ljava/util/regex/Matcher;
    const-string p2, "\n"

    invoke-virtual {p0, p2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .local p0, quotedText:Ljava/lang/String;
    move-object p2, p0

    .line 197
    .end local p0           #quotedText:Ljava/lang/String;
    .local p2, quotedText:Ljava/lang/String;
    :goto_a
    if-nez v4, :cond_9

    if-eqz v2, :cond_17

    :cond_9
    if-nez v3, :cond_a

    if-eqz v1, :cond_17

    .line 199
    :cond_a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v5, "<html><body><p>"

    .end local v5           #text:Ljava/lang/String;
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 200
    .restart local v5       #text:Ljava/lang/String;
    sget-object p0, Lcom/android/email/mail/transport/Rfc822Output;->PATTERN_START_OF_LINE:Ljava/util/regex/Pattern;

    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 201
    .local p0, matcher2:Ljava/util/regex/Matcher;
    const-string p1, "<br>"

    .end local p1           #intro:Ljava/lang/String;
    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .local p0, intro:Ljava/lang/String;
    move-object p1, v5

    .line 204
    .end local v5           #text:Ljava/lang/String;
    .local p1, text:Ljava/lang/String;
    :goto_b
    if-eqz v3, :cond_11

    .line 205
    new-instance v1, Ljava/lang/StringBuilder;

    .end local v1           #isForward:Z
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .end local p1           #text:Ljava/lang/String;
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0           #intro:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 206
    .restart local p1       #text:Ljava/lang/String;
    if-eqz p2, :cond_f

    .line 207
    if-nez v2, :cond_e

    .line 209
    sget-object p0, Lcom/android/email/mail/transport/Rfc822Output;->PATTERN_START_OF_LINE:Ljava/util/regex/Pattern;

    invoke-virtual {p0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 210
    .local p0, matcher:Ljava/util/regex/Matcher;
    new-instance p2, Ljava/lang/StringBuilder;

    .end local p2           #quotedText:Ljava/lang/String;
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .end local p1           #text:Ljava/lang/String;
    const-string p2, ">"

    invoke-virtual {p0, p2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .end local p0           #matcher:Ljava/util/regex/Matcher;
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 211
    .local p0, text:Ljava/lang/String;
    if-eqz v4, :cond_b

    .line 212
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0           #text:Ljava/lang/String;
    const-string p1, "</p></body></html>"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 231
    .restart local p0       #text:Ljava/lang/String;
    :cond_b
    :goto_c
    iput-object p0, v0, Lcom/android/email/mail/transport/Rfc822Output$BodyTextHtml;->bodyString:Ljava/lang/String;

    .line 232
    if-nez v4, :cond_c

    if-eqz v2, :cond_15

    :cond_c
    const/4 p0, 0x1

    .end local p0           #text:Ljava/lang/String;
    :goto_d
    iput-boolean p0, v0, Lcom/android/email/mail/transport/Rfc822Output$BodyTextHtml;->isHtml:Z

    move-object p0, v0

    .line 233
    goto/16 :goto_0

    .line 189
    .restart local v1       #isForward:Z
    .restart local v5       #text:Ljava/lang/String;
    .local p0, body:Lcom/android/email/provider/EmailContent$Body;
    .local p1, intro:Ljava/lang/String;
    .local p2, appendQuotedText:Z
    :cond_d
    iget-object p0, p0, Lcom/android/email/provider/EmailContent$Body;->mTextReply:Ljava/lang/String;

    .local p0, quotedText:Ljava/lang/String;
    goto/16 :goto_9

    .line 215
    .end local v1           #isForward:Z
    .end local v5           #text:Ljava/lang/String;
    .end local p0           #quotedText:Ljava/lang/String;
    .local p1, text:Ljava/lang/String;
    .local p2, quotedText:Ljava/lang/String;
    :cond_e
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "</p></body></html>"

    .end local p1           #text:Ljava/lang/String;
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 216
    .local p0, text:Ljava/lang/String;
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0           #text:Ljava/lang/String;
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .restart local p0       #text:Ljava/lang/String;
    goto :goto_c

    .line 218
    .end local p0           #text:Ljava/lang/String;
    .restart local p1       #text:Ljava/lang/String;
    :cond_f
    if-nez v4, :cond_10

    if-eqz v2, :cond_16

    .line 219
    :cond_10
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "</p></body></html>"

    .end local p1           #text:Ljava/lang/String;
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .restart local p0       #text:Ljava/lang/String;
    goto :goto_c

    .line 220
    .restart local v1       #isForward:Z
    .local p0, intro:Ljava/lang/String;
    .restart local p1       #text:Ljava/lang/String;
    :cond_11
    if-eqz v1, :cond_16

    .line 221
    new-instance v1, Ljava/lang/StringBuilder;

    .end local v1           #isForward:Z
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .end local p1           #text:Ljava/lang/String;
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0           #intro:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 222
    .local p0, text:Ljava/lang/String;
    if-eqz p2, :cond_13

    .line 223
    if-eqz v2, :cond_12

    .line 224
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0           #text:Ljava/lang/String;
    const-string p1, "</p></body></html>"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 225
    .restart local p0       #text:Ljava/lang/String;
    :cond_12
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0           #text:Ljava/lang/String;
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 226
    .restart local p0       #text:Ljava/lang/String;
    if-nez v2, :cond_b

    if-eqz v4, :cond_b

    .line 227
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0           #text:Ljava/lang/String;
    const-string p1, "</p></body></html>"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .restart local p0       #text:Ljava/lang/String;
    goto/16 :goto_c

    .line 228
    :cond_13
    if-nez v4, :cond_14

    if-eqz v2, :cond_b

    .line 229
    :cond_14
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0           #text:Ljava/lang/String;
    const-string p1, "</p></body></html>"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .restart local p0       #text:Ljava/lang/String;
    goto/16 :goto_c

    .line 232
    .end local p2           #quotedText:Ljava/lang/String;
    :cond_15
    const/4 p0, 0x0

    goto/16 :goto_d

    .end local p0           #text:Ljava/lang/String;
    .restart local p1       #text:Ljava/lang/String;
    .restart local p2       #quotedText:Ljava/lang/String;
    :cond_16
    move-object p0, p1

    .end local p1           #text:Ljava/lang/String;
    .restart local p0       #text:Ljava/lang/String;
    goto/16 :goto_c

    .end local p0           #text:Ljava/lang/String;
    .restart local v1       #isForward:Z
    .restart local v5       #text:Ljava/lang/String;
    .local p1, intro:Ljava/lang/String;
    :cond_17
    move-object p0, p1

    .end local p1           #intro:Ljava/lang/String;
    .local p0, intro:Ljava/lang/String;
    move-object p1, v5

    .end local v5           #text:Ljava/lang/String;
    .local p1, text:Ljava/lang/String;
    goto/16 :goto_b

    .end local p2           #quotedText:Ljava/lang/String;
    .restart local v5       #text:Ljava/lang/String;
    .local p0, quotedText:Ljava/lang/String;
    .local p1, intro:Ljava/lang/String;
    :cond_18
    move-object p2, p0

    .end local p0           #quotedText:Ljava/lang/String;
    .restart local p2       #quotedText:Ljava/lang/String;
    goto/16 :goto_a

    .local p0, body:Lcom/android/email/provider/EmailContent$Body;
    .local p2, appendQuotedText:Z
    :cond_19
    move-object p2, v5

    .end local v5           #text:Ljava/lang/String;
    .local p2, text:Ljava/lang/String;
    goto/16 :goto_8

    .restart local v5       #text:Ljava/lang/String;
    .local p2, appendQuotedText:Z
    :cond_1a
    move-object p0, v5

    .end local v5           #text:Ljava/lang/String;
    .local p0, text:Ljava/lang/String;
    goto/16 :goto_7

    .end local v2           #isParentHtml:Z
    .end local v3           #isReply:Z
    .local v1, isParentHtml:Z
    .local p0, body:Lcom/android/email/provider/EmailContent$Body;
    .local p1, message:Lcom/android/email/provider/EmailContent$Message;
    :cond_1b
    move v2, v1

    .end local v1           #isParentHtml:Z
    .restart local v2       #isParentHtml:Z
    goto/16 :goto_2

    .end local v4           #isSelfHtml:Z
    .restart local v1       #isParentHtml:Z
    .local v2, isSelfHtml:Z
    :cond_1c
    move v4, v2

    .end local v2           #isSelfHtml:Z
    .restart local v4       #isSelfHtml:Z
    goto/16 :goto_1
.end method

.method private static getEmailPriority(I)Ljava/lang/String;
    .locals 2
    .parameter "value"

    .prologue
    const-string v1, "normal"

    .line 240
    packed-switch p0, :pswitch_data_0

    .line 248
    const-string v0, "normal"

    move-object v0, v1

    :goto_0
    return-object v0

    .line 242
    :pswitch_0
    const-string v0, "low"

    goto :goto_0

    .line 244
    :pswitch_1
    const-string v0, "normal"

    move-object v0, v1

    goto :goto_0

    .line 246
    :pswitch_2
    const-string v0, "high"

    goto :goto_0

    .line 240
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getIsExchangeAccount()Z
    .locals 1

    .prologue
    .line 693
    sget-boolean v0, Lcom/android/email/mail/transport/Rfc822Output;->mIsExchangeAccount:Z

    return v0
.end method

.method public static setIsExchangeAccount(Z)V
    .locals 0
    .parameter "isExchangeAcoount"

    .prologue
    .line 690
    sput-boolean p0, Lcom/android/email/mail/transport/Rfc822Output;->mIsExchangeAccount:Z

    .line 691
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
    .line 626
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 627
    invoke-virtual {p0, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 628
    const-string v0, ": "

    invoke-virtual {p0, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 629
    invoke-static {p2}, Lcom/android/email/mail/Address;->packedToHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lcom/android/email/mail/internet/MimeUtility;->fold(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 630
    const-string v0, "\r\n"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 632
    :cond_0
    return-void
.end method

.method private static writeBoundary(Ljava/io/Writer;Ljava/lang/String;Z)V
    .locals 2
    .parameter "writer"
    .parameter "boundary"
    .parameter "end"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v1, "--"

    .line 643
    const-string v0, "--"

    invoke-virtual {p0, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 644
    invoke-virtual {p0, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 645
    if-eqz p2, :cond_0

    .line 646
    const-string v0, "--"

    invoke-virtual {p0, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 648
    :cond_0
    const-string v0, "\r\n"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 649
    return-void
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
    .line 609
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 610
    invoke-virtual {p0, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 611
    const-string v0, ": "

    invoke-virtual {p0, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 612
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    invoke-static {p2, v0}, Lcom/android/email/mail/internet/MimeUtility;->foldAndEncode2(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 613
    const-string v0, "\r\n"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 615
    :cond_0
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

    .line 591
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 592
    const-string v0, "Rfc8220Output >>"

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

    .line 593
    invoke-virtual {p0, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 594
    const-string v0, ": "

    invoke-virtual {p0, v4}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 595
    invoke-virtual {p0, p2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 596
    const-string v0, "\r\n"

    invoke-virtual {p0, v3}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 598
    :cond_0
    return-void
.end method

.method private static writeHtmlWithHeaders(Ljava/io/Writer;Ljava/io/OutputStream;Ljava/lang/String;)V
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
    .line 676
    const-string v1, "Content-Type"

    const-string v2, "text/html; charset=utf-8"

    invoke-static {p0, v1, v2}, Lcom/android/email/mail/transport/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    const-string v1, "Content-Transfer-Encoding"

    const-string v2, "base64"

    invoke-static {p0, v1, v2}, Lcom/android/email/mail/transport/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    const-string v1, "\r\n"

    invoke-virtual {p0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 679
    const-string v1, "UTF-8"

    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 680
    .local v0, bytes:[B
    invoke-virtual {p0}, Ljava/io/Writer;->flush()V

    .line 684
    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 686
    return-void
.end method

.method private static writeOneAttachment(Landroid/content/Context;Ljava/io/Writer;Ljava/io/OutputStream;Lcom/android/email/provider/EmailContent$Attachment;)V
    .locals 12
    .parameter "context"
    .parameter "writer"
    .parameter "out"
    .parameter "attachment"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    const-string v10, "Rfc8220Output >>"

    .line 483
    iget-object v8, p3, Lcom/android/email/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lorg/apache/james/mime4j/codec/EncoderUtil;->hasToBeEncoded(Ljava/lang/String;I)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 485
    .local v3, ff:Ljava/lang/Boolean;
    iget-object v2, p3, Lcom/android/email/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    .line 487
    .local v2, encFileName:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    invoke-static {}, Lcom/android/email/mail/transport/Rfc822Output;->getIsExchangeAccount()Z

    move-result v8

    if-nez v8, :cond_0

    .line 488
    iget-object v8, p3, Lcom/android/email/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-static {v8}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encodeAddressDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 489
    const-string v8, "Rfc8220Output >>"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "writeOneAttachment hasToBeEncoded = true : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    :cond_0
    const-string v8, "Rfc8220Output >>"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "writeOneAttachment : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    const-string v8, "Content-Type"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p3, Lcom/android/email/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ";\n name=\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {p1, v8, v9}, Lcom/android/email/mail/transport/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    const-string v8, "Content-Transfer-Encoding"

    const-string v9, "base64"

    invoke-static {p1, v8, v9}, Lcom/android/email/mail/transport/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    iget v8, p3, Lcom/android/email/provider/EmailContent$Attachment;->mFlags:I

    and-int/lit8 v8, v8, 0x1

    if-nez v8, :cond_1

    .line 514
    const-string v8, "Content-Disposition"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "attachment;\n filename=\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n size="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, p3, Lcom/android/email/provider/EmailContent$Attachment;->mSize:J

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {p1, v8, v9}, Lcom/android/email/mail/transport/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    :cond_1
    const-string v8, "Content-ID"

    iget-object v9, p3, Lcom/android/email/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    invoke-static {p1, v8, v9}, Lcom/android/email/mail/transport/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    const-string v8, "\r\n"

    invoke-virtual {p1, v8}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 535
    const/4 v5, 0x0

    .line 537
    .local v5, inStream:Ljava/io/InputStream;
    const/4 v0, 0x0

    .line 540
    .local v0, base64Out:Landroid/util/Base64OutputStream;
    :try_start_0
    iget-object v8, p3, Lcom/android/email/provider/EmailContent$Attachment;->mContentBytes:[B

    if-eqz v8, :cond_4

    .line 541
    new-instance v6, Ljava/io/ByteArrayInputStream;

    iget-object v8, p3, Lcom/android/email/provider/EmailContent$Attachment;->mContentBytes:[B

    invoke-direct {v6, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .end local v5           #inStream:Ljava/io/InputStream;
    .local v6, inStream:Ljava/io/InputStream;
    move-object v5, v6

    .line 549
    .end local v6           #inStream:Ljava/io/InputStream;
    .restart local v5       #inStream:Ljava/io/InputStream;
    :goto_0
    invoke-virtual {p1}, Ljava/io/Writer;->flush()V

    .line 550
    new-instance v1, Landroid/util/Base64OutputStream;

    const/16 v8, 0x14

    invoke-direct {v1, p2, v8}, Landroid/util/Base64OutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 553
    .end local v0           #base64Out:Landroid/util/Base64OutputStream;
    .local v1, base64Out:Landroid/util/Base64OutputStream;
    :try_start_1
    invoke-static {v5, v1}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 561
    const/16 v8, 0xd

    invoke-virtual {p2, v8}, Ljava/io/OutputStream;->write(I)V

    .line 562
    const/16 v8, 0xa

    invoke-virtual {p2, v8}, Ljava/io/OutputStream;->write(I)V

    .line 563
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    .line 573
    if-eqz v1, :cond_2

    .line 575
    :try_start_2
    invoke-virtual {v1}, Landroid/util/Base64OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 577
    :cond_2
    :goto_1
    if-eqz v5, :cond_8

    .line 578
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    move-object v0, v1

    .line 581
    .end local v1           #base64Out:Landroid/util/Base64OutputStream;
    .restart local v0       #base64Out:Landroid/util/Base64OutputStream;
    :cond_3
    :goto_2
    return-void

    .line 544
    :cond_4
    :try_start_3
    iget-object v8, p3, Lcom/android/email/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 545
    .local v4, fileUri:Landroid/net/Uri;
    const-string v8, "Rfc8220Output >>"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "file uri : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v5

    goto :goto_0

    .line 565
    .end local v4           #fileUri:Landroid/net/Uri;
    :catch_0
    move-exception v8

    .line 573
    :goto_3
    if-eqz v0, :cond_5

    .line 575
    :try_start_4
    invoke-virtual {v0}, Landroid/util/Base64OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 577
    :cond_5
    :goto_4
    if-eqz v5, :cond_3

    .line 578
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    goto :goto_2

    .line 568
    :catch_1
    move-exception v8

    move-object v7, v8

    .line 569
    .local v7, ioe:Ljava/io/IOException;
    :goto_5
    :try_start_5
    new-instance v8, Lcom/android/email/mail/MessagingException;

    const-string v9, "Invalid attachment."

    invoke-direct {v8, v9, v7}, Lcom/android/email/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 573
    .end local v7           #ioe:Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :goto_6
    if-eqz v0, :cond_6

    .line 575
    :try_start_6
    invoke-virtual {v0}, Landroid/util/Base64OutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 577
    :cond_6
    :goto_7
    if-eqz v5, :cond_7

    .line 578
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    :cond_7
    throw v8

    .line 576
    .end local v0           #base64Out:Landroid/util/Base64OutputStream;
    .restart local v1       #base64Out:Landroid/util/Base64OutputStream;
    :catch_2
    move-exception v8

    goto :goto_1

    .end local v1           #base64Out:Landroid/util/Base64OutputStream;
    .restart local v0       #base64Out:Landroid/util/Base64OutputStream;
    :catch_3
    move-exception v8

    goto :goto_4

    :catch_4
    move-exception v9

    goto :goto_7

    .line 573
    .end local v0           #base64Out:Landroid/util/Base64OutputStream;
    .restart local v1       #base64Out:Landroid/util/Base64OutputStream;
    :catchall_1
    move-exception v8

    move-object v0, v1

    .end local v1           #base64Out:Landroid/util/Base64OutputStream;
    .restart local v0       #base64Out:Landroid/util/Base64OutputStream;
    goto :goto_6

    .line 568
    .end local v0           #base64Out:Landroid/util/Base64OutputStream;
    .restart local v1       #base64Out:Landroid/util/Base64OutputStream;
    :catch_5
    move-exception v8

    move-object v7, v8

    move-object v0, v1

    .end local v1           #base64Out:Landroid/util/Base64OutputStream;
    .restart local v0       #base64Out:Landroid/util/Base64OutputStream;
    goto :goto_5

    .line 565
    .end local v0           #base64Out:Landroid/util/Base64OutputStream;
    .restart local v1       #base64Out:Landroid/util/Base64OutputStream;
    :catch_6
    move-exception v8

    move-object v0, v1

    .end local v1           #base64Out:Landroid/util/Base64OutputStream;
    .restart local v0       #base64Out:Landroid/util/Base64OutputStream;
    goto :goto_3

    .end local v0           #base64Out:Landroid/util/Base64OutputStream;
    .restart local v1       #base64Out:Landroid/util/Base64OutputStream;
    :cond_8
    move-object v0, v1

    .end local v1           #base64Out:Landroid/util/Base64OutputStream;
    .restart local v0       #base64Out:Landroid/util/Base64OutputStream;
    goto :goto_2
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
    .line 664
    const-string v1, "Content-Type"

    const-string v2, "text/plain; charset=utf-8"

    invoke-static {p0, v1, v2}, Lcom/android/email/mail/transport/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    const-string v1, "Content-Transfer-Encoding"

    const-string v2, "base64"

    invoke-static {p0, v1, v2}, Lcom/android/email/mail/transport/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    const-string v1, "\r\n"

    invoke-virtual {p0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 667
    const-string v1, "UTF-8"

    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 668
    .local v0, bytes:[B
    invoke-virtual {p0}, Ljava/io/Writer;->flush()V

    .line 669
    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 670
    return-void
.end method

.method public static writeTo(Landroid/content/Context;JLjava/io/OutputStream;ZZ)V
    .locals 9
    .parameter "context"
    .parameter "messageId"
    .parameter "out"
    .parameter "appendQuotedText"
    .parameter "sendBcc"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 266
    invoke-static {p0, p1, p2}, Lcom/android/email/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Message;

    move-result-object v1

    .line 267
    .local v1, message:Lcom/android/email/provider/EmailContent$Message;
    if-nez v1, :cond_0

    .line 475
    .end local v1           #message:Lcom/android/email/provider/EmailContent$Message;
    .end local p0
    .end local p1
    .end local p4
    .end local p5
    :goto_0
    return-void

    .line 272
    .restart local v1       #message:Lcom/android/email/provider/EmailContent$Message;
    .restart local p0
    .restart local p1
    .restart local p4
    .restart local p5
    :cond_0
    new-instance v6, Ljava/io/BufferedOutputStream;

    const/16 v0, 0x400

    invoke-direct {v6, p3, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 273
    .local v6, stream:Ljava/io/OutputStream;
    new-instance v8, Ljava/io/OutputStreamWriter;

    invoke-direct {v8, v6}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 278
    .local v8, writer:Ljava/io/Writer;
    sget-object v0, Lcom/android/email/mail/transport/Rfc822Output;->mDateFormat:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/util/Date;

    iget-wide v3, v1, Lcom/android/email/provider/EmailContent$Message;->mTimeStamp:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 279
    .local v0, date:Ljava/lang/String;
    const-string v2, "Date"

    invoke-static {v8, v2, v0}, Lcom/android/email/mail/transport/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    const-string v0, "Subject"

    .end local v0           #date:Ljava/lang/String;
    iget-object v2, v1, Lcom/android/email/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    invoke-static {v8, v0, v2}, Lcom/android/email/mail/transport/Rfc822Output;->writeEncodedHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    const-string v0, "Message-ID"

    iget-object v2, v1, Lcom/android/email/provider/EmailContent$Message;->mMessageId:Ljava/lang/String;

    invoke-static {v8, v0, v2}, Lcom/android/email/mail/transport/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "writing mail with new importance "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/android/email/provider/EmailContent$Message;->mImportance:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 286
    iget v0, v1, Lcom/android/email/provider/EmailContent$Message;->mImportance:I

    invoke-static {v0}, Lcom/android/email/mail/transport/Rfc822Output;->getEmailPriority(I)Ljava/lang/String;

    move-result-object v0

    .line 287
    .local v0, importance:Ljava/lang/String;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "this is the value returned from rfc822  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 289
    const-string v2, "Importance"

    invoke-static {v8, v2, v0}, Lcom/android/email/mail/transport/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    const-string v0, "From"

    .end local v0           #importance:Ljava/lang/String;
    iget-object v2, v1, Lcom/android/email/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    invoke-static {v8, v0, v2}, Lcom/android/email/mail/transport/Rfc822Output;->writeAddressHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    const-string v0, "To"

    iget-object v2, v1, Lcom/android/email/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    invoke-static {v8, v0, v2}, Lcom/android/email/mail/transport/Rfc822Output;->writeAddressHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    const-string v0, "Cc"

    iget-object v2, v1, Lcom/android/email/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    invoke-static {v8, v0, v2}, Lcom/android/email/mail/transport/Rfc822Output;->writeAddressHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    if-eqz p5, :cond_1

    .line 297
    const-string p5, "Bcc"

    .end local p5
    iget-object v0, v1, Lcom/android/email/provider/EmailContent$Message;->mBcc:Ljava/lang/String;

    invoke-static {v8, p5, v0}, Lcom/android/email/mail/transport/Rfc822Output;->writeAddressHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    :cond_1
    const-string p5, "Reply-To"

    iget-object v0, v1, Lcom/android/email/provider/EmailContent$Message;->mReplyTo:Ljava/lang/String;

    invoke-static {v8, p5, v0}, Lcom/android/email/mail/transport/Rfc822Output;->writeAddressHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    const-string p5, "MIME-Version"

    const-string v0, "1.0"

    invoke-static {v8, p5, v0}, Lcom/android/email/mail/transport/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    const/4 p5, 0x0

    .line 306
    .local p5, text:Ljava/lang/String;
    const/4 v0, 0x0

    .line 307
    .local v0, bodyText:Lcom/android/email/mail/transport/Rfc822Output$BodyTextHtml;
    iget-wide v2, v1, Lcom/android/email/provider/EmailContent$Message;->mAccountKey:J

    invoke-static {p0, v2, v3}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object p5

    .line 308
    .local p5, acc:Lcom/android/email/provider/EmailContent$Account;
    invoke-virtual {p5, p0}, Lcom/android/email/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p5

    .end local p5           #acc:Lcom/android/email/provider/EmailContent$Account;
    const-string v2, "eas"

    invoke-virtual {p5, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p5

    .line 309
    .local p5, isExchange:Z
    if-eqz p5, :cond_2

    .line 311
    invoke-static {p0, v1, p4}, Lcom/android/email/mail/transport/Rfc822Output;->buildBodyTextHtml(Landroid/content/Context;Lcom/android/email/provider/EmailContent$Message;Z)Lcom/android/email/mail/transport/Rfc822Output$BodyTextHtml;

    move-result-object p5

    .line 312
    .end local v0           #bodyText:Lcom/android/email/mail/transport/Rfc822Output$BodyTextHtml;
    .local p5, bodyText:Lcom/android/email/mail/transport/Rfc822Output$BodyTextHtml;
    iget-object v0, p5, Lcom/android/email/mail/transport/Rfc822Output$BodyTextHtml;->bodyString:Ljava/lang/String;

    .local v0, text:Ljava/lang/String;
    move-object v7, v0

    .line 317
    .end local v0           #text:Ljava/lang/String;
    .local v7, text:Ljava/lang/String;
    :goto_1
    if-eqz p4, :cond_a

    .line 318
    sget-object p4, Lcom/android/email/provider/EmailContent$Attachment;->MESSAGE_ID_URI:Landroid/net/Uri;

    .end local p4
    invoke-static {p4, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 319
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/email/provider/EmailContent$Attachment;->CONTENT_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p4

    .line 323
    .local p4, attachmentsCursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {p4}, Landroid/database/Cursor;->getCount()I

    move-result p2

    .line 324
    .end local p1
    .local p2, attachmentCount:I
    if-lez p2, :cond_3

    const/4 p1, 0x1

    move v0, p1

    .line 325
    .local v0, multipart:Z
    :goto_2
    const/4 p1, 0x0

    .line 326
    .local p1, multipartBoundary:Ljava/lang/String;
    const-string v3, "mixed"

    .line 329
    .local v3, multipartType:Ljava/lang/String;
    if-nez v0, :cond_6

    .line 330
    if-eqz v7, :cond_5

    .line 332
    if-eqz p5, :cond_4

    iget-boolean p0, p5, Lcom/android/email/mail/transport/Rfc822Output$BodyTextHtml;->isHtml:Z

    .end local p0
    if-eqz p0, :cond_4

    .line 333
    invoke-static {v8, v6, v7}, Lcom/android/email/mail/transport/Rfc822Output;->writeHtmlWithHeaders(Ljava/io/Writer;Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object p0, p1

    .end local p1           #multipartBoundary:Ljava/lang/String;
    .local p0, multipartBoundary:Ljava/lang/String;
    move-object p1, v3

    .line 384
    .end local v3           #multipartType:Ljava/lang/String;
    .local p1, multipartType:Ljava/lang/String;
    :goto_3
    invoke-interface {p4}, Landroid/database/Cursor;->close()V

    move-object p5, p1

    .end local p1           #multipartType:Ljava/lang/String;
    .local p5, multipartType:Ljava/lang/String;
    move-object p1, p4

    .end local p4           #attachmentsCursor:Landroid/database/Cursor;
    .local p1, attachmentsCursor:Landroid/database/Cursor;
    move-object p4, p0

    .end local p0           #multipartBoundary:Ljava/lang/String;
    .local p4, multipartBoundary:Ljava/lang/String;
    move p0, p2

    .end local p2           #attachmentCount:I
    .local p0, attachmentCount:I
    move p2, v0

    .line 473
    .end local v0           #multipart:Z
    .local p2, multipart:I
    :goto_4
    invoke-virtual {v8}, Ljava/io/OutputStreamWriter;->flush()V

    .line 474
    invoke-virtual {p3}, Ljava/io/OutputStream;->flush()V

    goto/16 :goto_0

    .line 314
    .end local v7           #text:Ljava/lang/String;
    .end local p2           #multipart:I
    .local v0, bodyText:Lcom/android/email/mail/transport/Rfc822Output$BodyTextHtml;
    .local v1, message:Lcom/android/email/provider/EmailContent$Message;
    .local p0, context:Landroid/content/Context;
    .local p1, messageId:J
    .local p4, appendQuotedText:Z
    .local p5, isExchange:Z
    :cond_2
    invoke-static {p0, v1, p4}, Lcom/android/email/mail/transport/Rfc822Output;->buildBodyText(Landroid/content/Context;Lcom/android/email/provider/EmailContent$Message;Z)Ljava/lang/String;

    move-result-object p5

    .local p5, text:Ljava/lang/String;
    move-object v7, p5

    .end local p5           #text:Ljava/lang/String;
    .restart local v7       #text:Ljava/lang/String;
    move-object p5, v0

    .end local v0           #bodyText:Lcom/android/email/mail/transport/Rfc822Output$BodyTextHtml;
    .local p5, bodyText:Lcom/android/email/mail/transport/Rfc822Output$BodyTextHtml;
    goto :goto_1

    .line 324
    .end local p1           #messageId:J
    .local v1, uri:Landroid/net/Uri;
    .local p2, attachmentCount:I
    .local p4, attachmentsCursor:Landroid/database/Cursor;
    :cond_3
    const/4 p1, 0x0

    move v0, p1

    goto :goto_2

    .line 336
    .end local p0           #context:Landroid/content/Context;
    .local v0, multipart:Z
    .restart local v3       #multipartType:Ljava/lang/String;
    .local p1, multipartBoundary:Ljava/lang/String;
    :cond_4
    :try_start_1
    invoke-static {v8, v6, v7}, Lcom/android/email/mail/transport/Rfc822Output;->writeTextWithHeaders(Ljava/io/Writer;Ljava/io/OutputStream;Ljava/lang/String;)V

    move-object p0, p1

    .end local p1           #multipartBoundary:Ljava/lang/String;
    .local p0, multipartBoundary:Ljava/lang/String;
    move-object p1, v3

    .end local v3           #multipartType:Ljava/lang/String;
    .local p1, multipartType:Ljava/lang/String;
    goto :goto_3

    .line 338
    .restart local v3       #multipartType:Ljava/lang/String;
    .local p0, context:Landroid/content/Context;
    .local p1, multipartBoundary:Ljava/lang/String;
    :cond_5
    const-string p0, "\r\n"

    .end local p0           #context:Landroid/content/Context;
    invoke-virtual {v8, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    move-object p0, p1

    .end local p1           #multipartBoundary:Ljava/lang/String;
    .local p0, multipartBoundary:Ljava/lang/String;
    move-object p1, v3

    .end local v3           #multipartType:Ljava/lang/String;
    .local p1, multipartType:Ljava/lang/String;
    goto :goto_3

    .line 342
    .restart local v3       #multipartType:Ljava/lang/String;
    .local p0, context:Landroid/content/Context;
    .local p1, multipartBoundary:Ljava/lang/String;
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    .end local p1           #multipartBoundary:Ljava/lang/String;
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--_com.android.email_"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 345
    .local v2, multipartBoundary:Ljava/lang/String;
    invoke-interface {p4}, Landroid/database/Cursor;->moveToFirst()Z

    .line 346
    const/4 p1, 0x1

    if-ne p2, p1, :cond_7

    .line 349
    const/16 p1, 0xa

    invoke-interface {p4, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    .line 350
    .local p1, flags:I
    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_7

    .line 351
    .end local p1           #flags:I
    const-string p1, "alternative"

    .end local v3           #multipartType:Ljava/lang/String;
    .local p1, multipartType:Ljava/lang/String;
    move-object v3, p1

    .line 355
    .end local p1           #multipartType:Ljava/lang/String;
    .restart local v3       #multipartType:Ljava/lang/String;
    :cond_7
    const-string p1, "Content-Type"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "multipart/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; boundary=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, p1, v4}, Lcom/android/email/mail/transport/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    const-string p1, "\r\n"

    invoke-virtual {v8, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 361
    if-eqz v7, :cond_8

    .line 362
    const/4 p1, 0x0

    invoke-static {v8, v2, p1}, Lcom/android/email/mail/transport/Rfc822Output;->writeBoundary(Ljava/io/Writer;Ljava/lang/String;Z)V

    .line 364
    if-eqz p5, :cond_9

    iget-boolean p1, p5, Lcom/android/email/mail/transport/Rfc822Output$BodyTextHtml;->isHtml:Z

    if-eqz p1, :cond_9

    .line 365
    invoke-static {v8, v6, v7}, Lcom/android/email/mail/transport/Rfc822Output;->writeHtmlWithHeaders(Ljava/io/Writer;Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 373
    :cond_8
    :goto_5
    const/4 p1, 0x0

    invoke-static {v8, v2, p1}, Lcom/android/email/mail/transport/Rfc822Output;->writeBoundary(Ljava/io/Writer;Ljava/lang/String;Z)V

    .line 374
    const-class p1, Lcom/android/email/provider/EmailContent$Attachment;

    invoke-static {p4, p1}, Lcom/android/email/provider/EmailContent$Attachment;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/email/provider/EmailContent;

    move-result-object p1

    check-cast p1, Lcom/android/email/provider/EmailContent$Attachment;

    .line 376
    .local p1, attachment:Lcom/android/email/provider/EmailContent$Attachment;
    invoke-static {p0, v8, v6, p1}, Lcom/android/email/mail/transport/Rfc822Output;->writeOneAttachment(Landroid/content/Context;Ljava/io/Writer;Ljava/io/OutputStream;Lcom/android/email/provider/EmailContent$Attachment;)V

    .line 377
    const-string p1, "\r\n"

    .end local p1           #attachment:Lcom/android/email/provider/EmailContent$Attachment;
    invoke-virtual {v8, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 378
    invoke-interface {p4}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-nez p1, :cond_8

    .line 381
    const/4 p0, 0x1

    invoke-static {v8, v2, p0}, Lcom/android/email/mail/transport/Rfc822Output;->writeBoundary(Ljava/io/Writer;Ljava/lang/String;Z)V

    .end local p0           #context:Landroid/content/Context;
    move-object p1, v3

    .end local v3           #multipartType:Ljava/lang/String;
    .local p1, multipartType:Ljava/lang/String;
    move-object p0, v2

    .end local v2           #multipartBoundary:Ljava/lang/String;
    .local p0, multipartBoundary:Ljava/lang/String;
    goto/16 :goto_3

    .line 368
    .end local p1           #multipartType:Ljava/lang/String;
    .restart local v2       #multipartBoundary:Ljava/lang/String;
    .restart local v3       #multipartType:Ljava/lang/String;
    .local p0, context:Landroid/content/Context;
    :cond_9
    invoke-static {v8, v6, v7}, Lcom/android/email/mail/transport/Rfc822Output;->writeTextWithHeaders(Ljava/io/Writer;Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    .line 384
    .end local v0           #multipart:Z
    .end local v2           #multipartBoundary:Ljava/lang/String;
    .end local v3           #multipartType:Ljava/lang/String;
    .end local p0           #context:Landroid/content/Context;
    .end local p2           #attachmentCount:I
    :catchall_0
    move-exception p0

    invoke-interface {p4}, Landroid/database/Cursor;->close()V

    throw p0

    .line 396
    .local v1, message:Lcom/android/email/provider/EmailContent$Message;
    .restart local p0       #context:Landroid/content/Context;
    .local p1, messageId:J
    .local p4, appendQuotedText:Z
    :cond_a
    sget-object p4, Lcom/android/email/provider/EmailContent$Attachment;->MESSAGE_ID_URI:Landroid/net/Uri;

    .end local p4           #appendQuotedText:Z
    invoke-static {p4, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 397
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/email/provider/EmailContent$Attachment;->CONTENT_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p4

    .line 401
    .local p4, attachmentsCursor:Landroid/database/Cursor;
    :try_start_2
    invoke-interface {p4}, Landroid/database/Cursor;->getCount()I

    move-result p2

    .line 402
    .end local p1           #messageId:J
    .restart local p2       #attachmentCount:I
    if-lez p2, :cond_b

    const/4 p1, 0x1

    move v0, p1

    .line 403
    .restart local v0       #multipart:Z
    :goto_6
    const/4 p1, 0x0

    .line 404
    .local p1, multipartBoundary:Ljava/lang/String;
    const-string v3, "mixed"

    .line 407
    .restart local v3       #multipartType:Ljava/lang/String;
    if-nez v0, :cond_e

    .line 408
    if-eqz v7, :cond_d

    .line 410
    if-eqz p5, :cond_c

    iget-boolean p0, p5, Lcom/android/email/mail/transport/Rfc822Output$BodyTextHtml;->isHtml:Z

    .end local p0           #context:Landroid/content/Context;
    if-eqz p0, :cond_c

    .line 411
    invoke-static {v8, v6, v7}, Lcom/android/email/mail/transport/Rfc822Output;->writeHtmlWithHeaders(Ljava/io/Writer;Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object p0, p1

    .end local p1           #multipartBoundary:Ljava/lang/String;
    .local p0, multipartBoundary:Ljava/lang/String;
    move-object p1, v3

    .line 469
    .end local v3           #multipartType:Ljava/lang/String;
    .end local p5           #bodyText:Lcom/android/email/mail/transport/Rfc822Output$BodyTextHtml;
    .local p1, multipartType:Ljava/lang/String;
    :goto_7
    invoke-interface {p4}, Landroid/database/Cursor;->close()V

    move-object p5, p1

    .end local p1           #multipartType:Ljava/lang/String;
    .local p5, multipartType:Ljava/lang/String;
    move-object p1, p4

    .end local p4           #attachmentsCursor:Landroid/database/Cursor;
    .local p1, attachmentsCursor:Landroid/database/Cursor;
    move-object p4, p0

    .end local p0           #multipartBoundary:Ljava/lang/String;
    .local p4, multipartBoundary:Ljava/lang/String;
    move p0, p2

    .end local p2           #attachmentCount:I
    .local p0, attachmentCount:I
    move p2, v0

    .line 470
    .local p2, multipart:I
    goto/16 :goto_4

    .line 402
    .end local v0           #multipart:Z
    .end local p1           #attachmentsCursor:Landroid/database/Cursor;
    .local p0, context:Landroid/content/Context;
    .local p2, attachmentCount:I
    .local p4, attachmentsCursor:Landroid/database/Cursor;
    .local p5, bodyText:Lcom/android/email/mail/transport/Rfc822Output$BodyTextHtml;
    :cond_b
    const/4 p1, 0x0

    move v0, p1

    goto :goto_6

    .line 413
    .end local p0           #context:Landroid/content/Context;
    .restart local v0       #multipart:Z
    .restart local v3       #multipartType:Ljava/lang/String;
    .local p1, multipartBoundary:Ljava/lang/String;
    :cond_c
    :try_start_3
    invoke-static {v8, v6, v7}, Lcom/android/email/mail/transport/Rfc822Output;->writeTextWithHeaders(Ljava/io/Writer;Ljava/io/OutputStream;Ljava/lang/String;)V

    move-object p0, p1

    .end local p1           #multipartBoundary:Ljava/lang/String;
    .local p0, multipartBoundary:Ljava/lang/String;
    move-object p1, v3

    .end local v3           #multipartType:Ljava/lang/String;
    .local p1, multipartType:Ljava/lang/String;
    goto :goto_7

    .line 416
    .restart local v3       #multipartType:Ljava/lang/String;
    .local p0, context:Landroid/content/Context;
    .local p1, multipartBoundary:Ljava/lang/String;
    :cond_d
    const-string p0, "\r\n"

    .end local p0           #context:Landroid/content/Context;
    invoke-virtual {v8, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    move-object p0, p1

    .end local p1           #multipartBoundary:Ljava/lang/String;
    .local p0, multipartBoundary:Ljava/lang/String;
    move-object p1, v3

    .end local v3           #multipartType:Ljava/lang/String;
    .local p1, multipartType:Ljava/lang/String;
    goto :goto_7

    .line 420
    .restart local v3       #multipartType:Ljava/lang/String;
    .local p0, context:Landroid/content/Context;
    .local p1, multipartBoundary:Ljava/lang/String;
    :cond_e
    new-instance p1, Ljava/lang/StringBuilder;

    .end local p1           #multipartBoundary:Ljava/lang/String;
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--_com.android.email_"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 423
    .restart local v2       #multipartBoundary:Ljava/lang/String;
    invoke-interface {p4}, Landroid/database/Cursor;->moveToFirst()Z

    .line 424
    const/4 p1, 0x1

    if-ne p2, p1, :cond_f

    .line 427
    const/16 p1, 0xa

    invoke-interface {p4, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    .line 428
    .local p1, flags:I
    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_f

    .line 429
    .end local p1           #flags:I
    const-string p1, "alternative"

    .end local v3           #multipartType:Ljava/lang/String;
    .local p1, multipartType:Ljava/lang/String;
    move-object v3, p1

    .line 433
    .end local p1           #multipartType:Ljava/lang/String;
    .restart local v3       #multipartType:Ljava/lang/String;
    :cond_f
    const-string p1, "Content-Type"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "multipart/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; boundary=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, p1, v4}, Lcom/android/email/mail/transport/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    const-string p1, "\r\n"

    invoke-virtual {v8, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 439
    if-eqz v7, :cond_10

    .line 440
    const/4 p1, 0x0

    invoke-static {v8, v2, p1}, Lcom/android/email/mail/transport/Rfc822Output;->writeBoundary(Ljava/io/Writer;Ljava/lang/String;Z)V

    .line 442
    if-eqz p5, :cond_12

    iget-boolean p1, p5, Lcom/android/email/mail/transport/Rfc822Output$BodyTextHtml;->isHtml:Z

    if-eqz p1, :cond_12

    .line 443
    invoke-static {v8, v6, v7}, Lcom/android/email/mail/transport/Rfc822Output;->writeHtmlWithHeaders(Ljava/io/Writer;Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 453
    .end local p5           #bodyText:Lcom/android/email/mail/transport/Rfc822Output$BodyTextHtml;
    :cond_10
    :goto_8
    const-class p1, Lcom/android/email/provider/EmailContent$Attachment;

    invoke-static {p4, p1}, Lcom/android/email/provider/EmailContent$Attachment;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/email/provider/EmailContent;

    move-result-object p1

    check-cast p1, Lcom/android/email/provider/EmailContent$Attachment;

    .line 454
    .local p1, attachment:Lcom/android/email/provider/EmailContent$Attachment;
    iget-object p5, p1, Lcom/android/email/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    if-eqz p5, :cond_11

    iget-object p5, p1, Lcom/android/email/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    const-string v4, "file://"

    invoke-virtual {p5, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p5

    if-nez p5, :cond_13

    .line 463
    .end local p1           #attachment:Lcom/android/email/provider/EmailContent$Attachment;
    :cond_11
    :goto_9
    invoke-interface {p4}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-nez p1, :cond_10

    .line 466
    const/4 p0, 0x1

    invoke-static {v8, v2, p0}, Lcom/android/email/mail/transport/Rfc822Output;->writeBoundary(Ljava/io/Writer;Ljava/lang/String;Z)V

    .end local p0           #context:Landroid/content/Context;
    move-object p1, v3

    .end local v3           #multipartType:Ljava/lang/String;
    .local p1, multipartType:Ljava/lang/String;
    move-object p0, v2

    .end local v2           #multipartBoundary:Ljava/lang/String;
    .local p0, multipartBoundary:Ljava/lang/String;
    goto/16 :goto_7

    .line 445
    .end local p1           #multipartType:Ljava/lang/String;
    .restart local v2       #multipartBoundary:Ljava/lang/String;
    .restart local v3       #multipartType:Ljava/lang/String;
    .local p0, context:Landroid/content/Context;
    .restart local p5       #bodyText:Lcom/android/email/mail/transport/Rfc822Output$BodyTextHtml;
    :cond_12
    invoke-static {v8, v6, v7}, Lcom/android/email/mail/transport/Rfc822Output;->writeTextWithHeaders(Ljava/io/Writer;Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_8

    .line 469
    .end local v0           #multipart:Z
    .end local v2           #multipartBoundary:Ljava/lang/String;
    .end local v3           #multipartType:Ljava/lang/String;
    .end local p0           #context:Landroid/content/Context;
    .end local p2           #attachmentCount:I
    .end local p5           #bodyText:Lcom/android/email/mail/transport/Rfc822Output$BodyTextHtml;
    :catchall_1
    move-exception p0

    invoke-interface {p4}, Landroid/database/Cursor;->close()V

    throw p0

    .line 459
    .restart local v0       #multipart:Z
    .restart local v2       #multipartBoundary:Ljava/lang/String;
    .restart local v3       #multipartType:Ljava/lang/String;
    .restart local p0       #context:Landroid/content/Context;
    .local p1, attachment:Lcom/android/email/provider/EmailContent$Attachment;
    .restart local p2       #attachmentCount:I
    :cond_13
    const/4 p5, 0x0

    :try_start_4
    invoke-static {v8, v2, p5}, Lcom/android/email/mail/transport/Rfc822Output;->writeBoundary(Ljava/io/Writer;Ljava/lang/String;Z)V

    .line 460
    invoke-static {p0, v8, v6, p1}, Lcom/android/email/mail/transport/Rfc822Output;->writeOneAttachment(Landroid/content/Context;Ljava/io/Writer;Ljava/io/OutputStream;Lcom/android/email/provider/EmailContent$Attachment;)V

    .line 461
    const-string p1, "\r\n"

    .end local p1           #attachment:Lcom/android/email/provider/EmailContent$Attachment;
    invoke-virtual {v8, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_9
.end method
