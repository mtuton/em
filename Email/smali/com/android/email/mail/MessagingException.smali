.class public Lcom/android/email/mail/MessagingException;
.super Ljava/lang/Exception;
.source "MessagingException.java"


# static fields
.field public static final serialVersionUID:J = -0x1L


# instance fields
.field protected mExceptionType:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "exceptionType"

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 105
    iput p1, p0, Lcom/android/email/mail/MessagingException;->mExceptionType:I

    .line 106
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .parameter "exceptionType"
    .parameter "exceptionMessage"

    .prologue
    .line 119
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 120
    iput p1, p0, Lcom/android/email/mail/MessagingException;->mExceptionType:I

    .line 121
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .parameter "exceptionType"
    .parameter "message"

    .prologue
    .line 113
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 114
    iput p1, p0, Lcom/android/email/mail/MessagingException;->mExceptionType:I

    .line 115
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 91
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/email/mail/MessagingException;->mExceptionType:I

    .line 92
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .parameter "message"
    .parameter "throwable"

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 96
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/email/mail/MessagingException;->mExceptionType:I

    .line 97
    return-void
.end method


# virtual methods
.method public getExceptionType()I
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lcom/android/email/mail/MessagingException;->mExceptionType:I

    return v0
.end method
