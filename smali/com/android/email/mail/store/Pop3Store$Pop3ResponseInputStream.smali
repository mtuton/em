.class Lcom/android/email/mail/store/Pop3Store$Pop3ResponseInputStream;
.super Ljava/io/InputStream;
.source "Pop3Store.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/mail/store/Pop3Store;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Pop3ResponseInputStream"
.end annotation


# instance fields
.field mFinished:Z

.field mIn:Ljava/io/InputStream;

.field mStartOfLine:Z

.field final synthetic this$0:Lcom/android/email/mail/store/Pop3Store;


# direct methods
.method public constructor <init>(Lcom/android/email/mail/store/Pop3Store;Ljava/io/InputStream;)V
    .locals 1
    .parameter
    .parameter "in"

    .prologue
    .line 1058
    iput-object p1, p0, Lcom/android/email/mail/store/Pop3Store$Pop3ResponseInputStream;->this$0:Lcom/android/email/mail/store/Pop3Store;

    .line 1059
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 1055
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/mail/store/Pop3Store$Pop3ResponseInputStream;->mStartOfLine:Z

    .line 1060
    iput-object p2, p0, Lcom/android/email/mail/store/Pop3Store$Pop3ResponseInputStream;->mIn:Ljava/io/InputStream;

    .line 1061
    return-void
.end method


# virtual methods
.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 1065
    iget-boolean v1, p0, Lcom/android/email/mail/store/Pop3Store$Pop3ResponseInputStream;->mFinished:Z

    if-eqz v1, :cond_0

    move v1, v2

    .line 1080
    :goto_0
    return v1

    .line 1068
    :cond_0
    iget-object v1, p0, Lcom/android/email/mail/store/Pop3Store$Pop3ResponseInputStream;->mIn:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 1069
    .local v0, d:I
    iget-boolean v1, p0, Lcom/android/email/mail/store/Pop3Store$Pop3ResponseInputStream;->mStartOfLine:Z

    if-eqz v1, :cond_1

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_1

    .line 1070
    iget-object v1, p0, Lcom/android/email/mail/store/Pop3Store$Pop3ResponseInputStream;->mIn:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 1071
    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    .line 1072
    iput-boolean v3, p0, Lcom/android/email/mail/store/Pop3Store$Pop3ResponseInputStream;->mFinished:Z

    .line 1073
    iget-object v1, p0, Lcom/android/email/mail/store/Pop3Store$Pop3ResponseInputStream;->mIn:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move v1, v2

    .line 1074
    goto :goto_0

    .line 1078
    :cond_1
    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    move v1, v3

    :goto_1
    iput-boolean v1, p0, Lcom/android/email/mail/store/Pop3Store$Pop3ResponseInputStream;->mStartOfLine:Z

    move v1, v0

    .line 1080
    goto :goto_0

    .line 1078
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method
