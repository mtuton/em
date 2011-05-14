.class public Lcom/android/email/mail/internet/EmailHtmlUtil;
.super Ljava/lang/Object;
.source "EmailHtmlUtil.java"


# static fields
.field private static final PLAIN_TEXT_TO_ESCAPE:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-string v0, "[<>&]| {2,}|\r?\n"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/email/mail/internet/EmailHtmlUtil;->PLAIN_TEXT_TO_ESCAPE:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static escapeCharacterToDisplay(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "text"

    .prologue
    const/16 v9, 0x20

    .line 90
    sget-object v6, Lcom/android/email/mail/internet/EmailHtmlUtil;->PLAIN_TEXT_TO_ESCAPE:Ljava/util/regex/Pattern;

    .line 91
    .local v6, pattern:Ljava/util/regex/Pattern;
    invoke-virtual {v6, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 93
    .local v3, match:Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 94
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .local v5, out:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 97
    .local v1, end:I
    :cond_0
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v7

    .line 98
    .local v7, start:I
    invoke-virtual {p0, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    .line 100
    invoke-virtual {p0, v7}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 101
    .local v0, c:I
    if-ne v0, v9, :cond_4

    .line 103
    const/4 v2, 0x1

    .local v2, i:I
    sub-int v4, v1, v7

    .local v4, n:I
    :goto_0
    if-ge v2, v4, :cond_1

    .line 104
    const-string v8, "&nbsp;"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 106
    :cond_1
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 116
    .end local v2           #i:I
    .end local v4           #n:I
    :cond_2
    :goto_1
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-nez v8, :cond_0

    .line 117
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 120
    .end local v0           #c:I
    .end local v1           #end:I
    .end local v5           #out:Ljava/lang/StringBuilder;
    .end local v7           #start:I
    :cond_3
    return-object p0

    .line 107
    .restart local v0       #c:I
    .restart local v1       #end:I
    .restart local v5       #out:Ljava/lang/StringBuilder;
    .restart local v7       #start:I
    :cond_4
    const/16 v8, 0xd

    if-eq v0, v8, :cond_5

    const/16 v8, 0xa

    if-ne v0, v8, :cond_6

    .line 108
    :cond_5
    const-string v8, "<br>"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 109
    :cond_6
    const/16 v8, 0x3c

    if-ne v0, v8, :cond_7

    .line 110
    const-string v8, "&lt;"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 111
    :cond_7
    const/16 v8, 0x3e

    if-ne v0, v8, :cond_8

    .line 112
    const-string v8, "&gt;"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 113
    :cond_8
    const/16 v8, 0x26

    if-ne v0, v8, :cond_2

    .line 114
    const-string v8, "&amp;"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public static resolveInlineImage(Landroid/content/ContentResolver;JLjava/lang/String;Lcom/android/email/mail/Part;I)Ljava/lang/String;
    .locals 8
    .parameter "resolver"
    .parameter "accountId"
    .parameter "text"
    .parameter "part"
    .parameter "depth"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 54
    const/16 v1, 0xa

    if-ge p5, v1, :cond_0

    if-nez p3, :cond_1

    :cond_0
    move-object p0, p3

    .line 80
    .end local p3
    .end local p4
    .local p0, text:Ljava/lang/String;
    :goto_0
    return-object p0

    .line 57
    .local p0, resolver:Landroid/content/ContentResolver;
    .restart local p3
    .restart local p4
    :cond_1
    invoke-interface {p4}, Lcom/android/email/mail/Part;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/email/mail/internet/MimeUtility;->unfoldAndDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 58
    .local v1, contentType:Ljava/lang/String;
    invoke-interface {p4}, Lcom/android/email/mail/Part;->getContentId()Ljava/lang/String;

    move-result-object v2

    .line 59
    .local v2, contentId:Ljava/lang/String;
    const-string v3, "image/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    .end local v1           #contentType:Ljava/lang/String;
    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    instance-of v1, p4, Lcom/android/email/mail/store/LocalStore$LocalAttachmentBodyPart;

    if-eqz v1, :cond_2

    .line 62
    move-object v0, p4

    check-cast v0, Lcom/android/email/mail/store/LocalStore$LocalAttachmentBodyPart;

    move-object v1, v0

    .line 63
    .local v1, attachment:Lcom/android/email/mail/store/LocalStore$LocalAttachmentBodyPart;
    invoke-virtual {v1}, Lcom/android/email/mail/store/LocalStore$LocalAttachmentBodyPart;->getAttachmentId()J

    move-result-wide v3

    invoke-static {p1, p2, v3, v4}, Lcom/android/email/provider/AttachmentProvider;->getAttachmentUri(JJ)Landroid/net/Uri;

    move-result-object v1

    .line 65
    .local v1, attachmentUri:Landroid/net/Uri;
    invoke-static {p0, v1}, Lcom/android/email/provider/AttachmentProvider;->resolveAttachmentIdToContentUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    .line 68
    .local v3, contentUri:Landroid/net/Uri;
    new-instance v1, Ljava/lang/StringBuilder;

    .end local v1           #attachmentUri:Landroid/net/Uri;
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\\s+(?i)src=\"cid(?-i):\\Q"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\\E\""

    .end local v2           #contentId:Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 70
    .local v1, contentIdRe:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " src=\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    .end local v3           #contentUri:Landroid/net/Uri;
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 73
    .end local v1           #contentIdRe:Ljava/lang/String;
    :cond_2
    invoke-interface {p4}, Lcom/android/email/mail/Part;->getBody()Lcom/android/email/mail/Body;

    move-result-object v1

    instance-of v1, v1, Lcom/android/email/mail/Multipart;

    if-eqz v1, :cond_3

    .line 74
    invoke-interface {p4}, Lcom/android/email/mail/Part;->getBody()Lcom/android/email/mail/Body;

    move-result-object v7

    check-cast v7, Lcom/android/email/mail/Multipart;

    .line 75
    .local v7, mp:Lcom/android/email/mail/Multipart;
    const/4 p4, 0x0

    .local p4, i:I
    :goto_1
    invoke-virtual {v7}, Lcom/android/email/mail/Multipart;->getCount()I

    move-result v1

    if-ge p4, v1, :cond_3

    .line 76
    invoke-virtual {v7, p4}, Lcom/android/email/mail/Multipart;->getBodyPart(I)Lcom/android/email/mail/BodyPart;

    move-result-object v5

    add-int/lit8 v6, p5, 0x1

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    invoke-static/range {v1 .. v6}, Lcom/android/email/mail/internet/EmailHtmlUtil;->resolveInlineImage(Landroid/content/ContentResolver;JLjava/lang/String;Lcom/android/email/mail/Part;I)Ljava/lang/String;

    move-result-object p3

    .line 75
    add-int/lit8 p4, p4, 0x1

    goto :goto_1

    .end local v7           #mp:Lcom/android/email/mail/Multipart;
    .end local p4           #i:I
    :cond_3
    move-object p0, p3

    .line 80
    .end local p3
    .local p0, text:Ljava/lang/String;
    goto/16 :goto_0
.end method
