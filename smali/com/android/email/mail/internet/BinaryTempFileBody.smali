.class public Lcom/android/email/mail/internet/BinaryTempFileBody;
.super Ljava/lang/Object;
.source "BinaryTempFileBody.java"

# interfaces
.implements Lcom/android/email/mail/Body;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/mail/internet/BinaryTempFileBody$BinaryTempFileBodyInputStream;
    }
.end annotation


# static fields
.field private static mTempDirectory:Ljava/io/File;


# instance fields
.field private mFile:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    sget-object v0, Lcom/android/email/mail/internet/BinaryTempFileBody;->mTempDirectory:Ljava/io/File;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setTempDirectory has not been called on BinaryTempFileBody!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/email/mail/internet/BinaryTempFileBody;)Ljava/io/File;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/email/mail/internet/BinaryTempFileBody;->mFile:Ljava/io/File;

    return-object v0
.end method

.method public static setTempDirectory(Ljava/io/File;)V
    .locals 0
    .parameter "tempDirectory"

    .prologue
    .line 51
    sput-object p0, Lcom/android/email/mail/internet/BinaryTempFileBody;->mTempDirectory:Ljava/io/File;

    .line 52
    return-void
.end method


# virtual methods
.method public getInputStream()Ljava/io/InputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 83
    :try_start_0
    new-instance v1, Lcom/android/email/mail/internet/BinaryTempFileBody$BinaryTempFileBodyInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/android/email/mail/internet/BinaryTempFileBody;->mFile:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, p0, v2}, Lcom/android/email/mail/internet/BinaryTempFileBody$BinaryTempFileBodyInputStream;-><init>(Lcom/android/email/mail/internet/BinaryTempFileBody;Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 85
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 86
    .local v0, ioe:Ljava/io/IOException;
    new-instance v1, Lcom/android/email/mail/MessagingException;

    const-string v2, "Unable to open body"

    invoke-direct {v1, v2, v0}, Lcom/android/email/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    const-string v0, "body"

    const/4 v1, 0x0

    sget-object v2, Lcom/android/email/mail/internet/BinaryTempFileBody;->mTempDirectory:Ljava/io/File;

    invoke-static {v0, v1, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/mail/internet/BinaryTempFileBody;->mFile:Ljava/io/File;

    .line 77
    iget-object v0, p0, Lcom/android/email/mail/internet/BinaryTempFileBody;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->deleteOnExit()V

    .line 78
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/android/email/mail/internet/BinaryTempFileBody;->mFile:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public setFile(Ljava/lang/String;)V
    .locals 1
    .parameter "filePath"

    .prologue
    .line 72
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/email/mail/internet/BinaryTempFileBody;->mFile:Ljava/io/File;

    .line 73
    return-void
.end method

.method public writeTo(Landroid/content/Context;JLjava/io/OutputStream;)V
    .locals 0
    .parameter "context"
    .parameter "messageId"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 64
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 3
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/android/email/mail/internet/BinaryTempFileBody;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 92
    .local v1, in:Ljava/io/InputStream;
    new-instance v0, Landroid/util/Base64OutputStream;

    const/16 v2, 0x14

    invoke-direct {v0, p1, v2}, Landroid/util/Base64OutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 94
    .local v0, base64Out:Landroid/util/Base64OutputStream;
    invoke-static {v1, v0}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 95
    invoke-virtual {v0}, Landroid/util/Base64OutputStream;->close()V

    .line 96
    iget-object v2, p0, Lcom/android/email/mail/internet/BinaryTempFileBody;->mFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 97
    return-void
.end method
