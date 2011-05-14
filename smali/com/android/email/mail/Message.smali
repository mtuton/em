.class public abstract Lcom/android/email/mail/Message;
.super Ljava/lang/Object;
.source "Message.java"

# interfaces
.implements Lcom/android/email/mail/Part;
.implements Lcom/android/email/mail/Body;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/mail/Message$RecipientType;
    }
.end annotation


# instance fields
.field private mFlags:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/email/mail/Flag;",
            ">;"
        }
    .end annotation
.end field

.field protected mFolder:Lcom/android/email/mail/Folder;

.field protected mInternalDate:Ljava/util/Date;

.field private mMessageId_original:J

.field protected mUid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/mail/Message;->mFlags:Ljava/util/HashSet;

    return-void
.end method

.method private getFlagSet()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/email/mail/Flag;",
            ">;"
        }
    .end annotation

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/email/mail/Message;->mFlags:Ljava/util/HashSet;

    if-nez v0, :cond_0

    .line 127
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/email/mail/Message;->mFlags:Ljava/util/HashSet;

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/android/email/mail/Message;->mFlags:Ljava/util/HashSet;

    return-object v0
.end method


# virtual methods
.method public abstract addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract getBody()Lcom/android/email/mail/Body;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract getContentType()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation
.end method

.method public getFlags()[Lcom/android/email/mail/Flag;
    .locals 2

    .prologue
    .line 136
    invoke-direct {p0}, Lcom/android/email/mail/Message;->getFlagSet()Ljava/util/HashSet;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/email/mail/Flag;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Lcom/android/email/mail/Flag;

    return-object p0
.end method

.method public getFolder()Lcom/android/email/mail/Folder;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/email/mail/Message;->mFolder:Lcom/android/email/mail/Folder;

    return-object v0
.end method

.method public abstract getFrom()[Lcom/android/email/mail/Address;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract getHeader(Ljava/lang/String;)[Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation
.end method

.method public getInternalDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/email/mail/Message;->mInternalDate:Ljava/util/Date;

    return-object v0
.end method

.method public abstract getMessageId()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation
.end method

.method public getMessageId_original()J
    .locals 2

    .prologue
    .line 47
    iget-wide v0, p0, Lcom/android/email/mail/Message;->mMessageId_original:J

    return-wide v0
.end method

.method public abstract getReceivedDate()Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract getRecipients(Lcom/android/email/mail/Message$RecipientType;)[Lcom/android/email/mail/Address;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract getReplyTo()[Lcom/android/email/mail/Address;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract getSentDate()Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract getSubject()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/email/mail/Message;->mUid:Ljava/lang/String;

    return-object v0
.end method

.method public isMimeType(Ljava/lang/String;)Z
    .locals 1
    .parameter "mimeType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/android/email/mail/Message;->getContentType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isSet(Lcom/android/email/mail/Flag;)Z
    .locals 1
    .parameter "flag"

    .prologue
    .line 167
    invoke-direct {p0}, Lcom/android/email/mail/Message;->getFlagSet()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public abstract removeHeader(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract saveChanges()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract setBody(Lcom/android/email/mail/Body;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation
.end method

.method public setFlag(Lcom/android/email/mail/Flag;Z)V
    .locals 0
    .parameter "flag"
    .parameter "set"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 152
    invoke-virtual {p0, p1, p2}, Lcom/android/email/mail/Message;->setFlagDirectlyForTest(Lcom/android/email/mail/Flag;Z)V

    .line 153
    return-void
.end method

.method public final setFlagDirectlyForTest(Lcom/android/email/mail/Flag;Z)V
    .locals 1
    .parameter "flag"
    .parameter "set"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 144
    if-eqz p2, :cond_0

    .line 145
    invoke-direct {p0}, Lcom/android/email/mail/Message;->getFlagSet()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 149
    :goto_0
    return-void

    .line 147
    :cond_0
    invoke-direct {p0}, Lcom/android/email/mail/Message;->getFlagSet()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setFlags([Lcom/android/email/mail/Flag;Z)V
    .locals 4
    .parameter "flags"
    .parameter "set"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 161
    move-object v0, p1

    .local v0, arr$:[Lcom/android/email/mail/Flag;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 162
    .local v1, flag:Lcom/android/email/mail/Flag;
    invoke-virtual {p0, v1, p2}, Lcom/android/email/mail/Message;->setFlag(Lcom/android/email/mail/Flag;Z)V

    .line 161
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 164
    .end local v1           #flag:Lcom/android/email/mail/Flag;
    :cond_0
    return-void
.end method

.method public abstract setFrom(Lcom/android/email/mail/Address;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation
.end method

.method public setInternalDate(Ljava/util/Date;)V
    .locals 0
    .parameter "internalDate"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/email/mail/Message;->mInternalDate:Ljava/util/Date;

    .line 73
    return-void
.end method

.method public abstract setMessageId(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation
.end method

.method public setMessageId_original(J)V
    .locals 0
    .parameter "set"

    .prologue
    .line 43
    iput-wide p1, p0, Lcom/android/email/mail/Message;->mMessageId_original:J

    .line 44
    return-void
.end method

.method public setRecipient(Lcom/android/email/mail/Message$RecipientType;Lcom/android/email/mail/Address;)V
    .locals 2
    .parameter "type"
    .parameter "address"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 87
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/email/mail/Address;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/android/email/mail/Message;->setRecipients(Lcom/android/email/mail/Message$RecipientType;[Lcom/android/email/mail/Address;)V

    .line 90
    return-void
.end method

.method public abstract setRecipients(Lcom/android/email/mail/Message$RecipientType;[Lcom/android/email/mail/Address;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract setReplyTo([Lcom/android/email/mail/Address;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract setSentDate(Ljava/util/Date;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract setSubject(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/email/mail/Message;->mUid:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/mail/Message;->mUid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract writeTo(Landroid/content/Context;JLjava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation
.end method
