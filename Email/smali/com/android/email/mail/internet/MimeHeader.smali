.class public Lcom/android/email/mail/internet/MimeHeader;
.super Ljava/lang/Object;
.source "MimeHeader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/mail/internet/MimeHeader$Field;
    }
.end annotation


# static fields
.field private static final writeOmitFields:[Ljava/lang/String;


# instance fields
.field protected mFields:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/email/mail/internet/MimeHeader$Field;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 50
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "X-Android-Attachment-StoreData"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/email/mail/internet/MimeHeader;->writeOmitFields:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/email/mail/internet/MimeHeader;->mFields:Ljava/util/ArrayList;

    .line 138
    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/email/mail/internet/MimeHeader;->mFields:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/email/mail/internet/MimeHeader$Field;

    invoke-direct {v1, p1, p2}, Lcom/android/email/mail/internet/MimeHeader$Field;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/email/mail/internet/MimeHeader;->mFields:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 60
    return-void
.end method

.method public getFirstHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Lcom/android/email/mail/internet/MimeHeader;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, header:[Ljava/lang/String;
    if-nez v0, :cond_0

    .line 65
    const/4 v1, 0x0

    .line 67
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    aget-object v1, v0, v1

    goto :goto_0
.end method

.method public getHeader(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 83
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 84
    .local v2, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/email/mail/internet/MimeHeader;->mFields:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/mail/internet/MimeHeader$Field;

    .line 85
    .local v0, field:Lcom/android/email/mail/internet/MimeHeader$Field;
    iget-object v3, v0, Lcom/android/email/mail/internet/MimeHeader$Field;->name:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 86
    iget-object v3, v0, Lcom/android/email/mail/internet/MimeHeader$Field;->value:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 90
    .end local v0           #field:Lcom/android/email/mail/internet/MimeHeader$Field;
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 91
    const/4 v3, 0x0

    .line 93
    .end local p0
    :goto_1
    return-object v3

    .restart local p0
    :cond_2
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/String;

    move-object v3, p0

    goto :goto_1
.end method

.method public removeHeader(Ljava/lang/String;)V
    .locals 4
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 97
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 98
    .local v2, removeFields:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/internet/MimeHeader$Field;>;"
    iget-object v3, p0, Lcom/android/email/mail/internet/MimeHeader;->mFields:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/mail/internet/MimeHeader$Field;

    .line 99
    .local v0, field:Lcom/android/email/mail/internet/MimeHeader$Field;
    iget-object v3, v0, Lcom/android/email/mail/internet/MimeHeader$Field;->name:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 100
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 103
    .end local v0           #field:Lcom/android/email/mail/internet/MimeHeader$Field;
    :cond_1
    iget-object v3, p0, Lcom/android/email/mail/internet/MimeHeader;->mFields:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 104
    return-void
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 75
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/email/mail/internet/MimeHeader;->removeHeader(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0, p1, p2}, Lcom/android/email/mail/internet/MimeHeader;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/email/mail/internet/MimeHeader;->mFields:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/email/mail/internet/MimeHeader;->mFields:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 6
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 127
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/OutputStreamWriter;

    invoke-direct {v4, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/16 v5, 0x400

    invoke-direct {v2, v4, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    .line 128
    .local v2, writer:Ljava/io/BufferedWriter;
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 129
    .local v3, writerTemp:Ljava/lang/StringBuffer;
    iget-object v4, p0, Lcom/android/email/mail/internet/MimeHeader;->mFields:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/mail/internet/MimeHeader$Field;

    .line 130
    .local v0, field:Lcom/android/email/mail/internet/MimeHeader$Field;
    sget-object v4, Lcom/android/email/mail/internet/MimeHeader;->writeOmitFields:[Ljava/lang/String;

    iget-object v5, v0, Lcom/android/email/mail/internet/MimeHeader$Field;->name:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/android/email/Utility;->arrayContains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 131
    iget-object v4, v0, Lcom/android/email/mail/internet/MimeHeader$Field;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, v0, Lcom/android/email/mail/internet/MimeHeader$Field;->value:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 132
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 135
    .end local v0           #field:Lcom/android/email/mail/internet/MimeHeader$Field;
    :cond_1
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V

    .line 136
    return-void
.end method

.method public writeToString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 114
    iget-object v3, p0, Lcom/android/email/mail/internet/MimeHeader;->mFields:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 115
    const/4 v3, 0x0

    .line 123
    :goto_0
    return-object v3

    .line 117
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    .local v0, builder:Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/android/email/mail/internet/MimeHeader;->mFields:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/mail/internet/MimeHeader$Field;

    .line 119
    .local v1, field:Lcom/android/email/mail/internet/MimeHeader$Field;
    sget-object v3, Lcom/android/email/mail/internet/MimeHeader;->writeOmitFields:[Ljava/lang/String;

    iget-object v4, v1, Lcom/android/email/mail/internet/MimeHeader$Field;->name:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/email/Utility;->arrayContains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 120
    iget-object v3, v1, Lcom/android/email/mail/internet/MimeHeader$Field;->name:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/email/mail/internet/MimeHeader$Field;->value:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 123
    .end local v1           #field:Lcom/android/email/mail/internet/MimeHeader$Field;
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method
