.class public Lcom/android/exchange/PartRequest;
.super Lcom/android/exchange/Request;
.source "PartRequest.java"


# instance fields
.field public mAttachment:Lcom/android/email/provider/EmailContent$Attachment;

.field public mContentUriString:Ljava/lang/String;

.field public mDestination:Ljava/lang/String;

.field public mLocation:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/email/provider/EmailContent$Attachment;)V
    .locals 2
    .parameter "_att"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/exchange/Request;-><init>()V

    .line 34
    iget-wide v0, p1, Lcom/android/email/provider/EmailContent$Attachment;->mMessageKey:J

    iput-wide v0, p0, Lcom/android/exchange/PartRequest;->mMessageId:J

    .line 35
    iput-object p1, p0, Lcom/android/exchange/PartRequest;->mAttachment:Lcom/android/email/provider/EmailContent$Attachment;

    .line 36
    iget-object v0, p0, Lcom/android/exchange/PartRequest;->mAttachment:Lcom/android/email/provider/EmailContent$Attachment;

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Attachment;->mLocation:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/exchange/PartRequest;->mLocation:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public constructor <init>(Lcom/android/email/provider/EmailContent$Attachment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "_att"
    .parameter "_destination"
    .parameter "_contentUriString"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/exchange/PartRequest;-><init>(Lcom/android/email/provider/EmailContent$Attachment;)V

    .line 41
    iput-object p2, p0, Lcom/android/exchange/PartRequest;->mDestination:Ljava/lang/String;

    .line 42
    iput-object p3, p0, Lcom/android/exchange/PartRequest;->mContentUriString:Ljava/lang/String;

    .line 43
    return-void
.end method
