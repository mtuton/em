.class public Lcom/android/email/mail/MessagingException;
.super Ljava/lang/Exception;
.source "MessagingException.java"


# static fields
.field public static final ACTIVATION_EXCEPTION:I = 0x14

.field public static final AUTHENTICATION_FAILED:I = 0x5

.field public static final AUTH_REQUIRED:I = 0x3

.field public static final DUPLICATE_ACCOUNT:I = 0x6

.field public static final EMPTYTRASH_EXCEPTION:I = 0x20000

.field public static final GAL_EXCEPTION:I = 0xa

.field public static final GENERAL_SECURITY:I = 0x4

.field public static final IOERROR:I = 0x1

.field public static final LOADMORE_EXCEPTION:I = 0x30000

.field public static final NO_ERROR:I = -0x1

.field public static final OOO_EXCEPTION:I = 0xb

.field public static final PROTOCOL_VERSION_UNSUPPORTED:I = 0x9

.field public static final SECURITY_POLICIES_REQUIRED:I = 0x7

.field public static final SECURITY_POLICIES_UNSUPPORTED:I = 0x8

.field public static final TLS_REQUIRED:I = 0x2

.field public static final UNSPECIFIED_EXCEPTION:I = 0x0

.field public static final UNSUPPORTED:I = 0x10000

.field public static final serialVersionUID:J = -0x1L


# instance fields
.field protected mExceptionType:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "exceptionType"

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 92
    iput p1, p0, Lcom/android/email/mail/MessagingException;->mExceptionType:I

    .line 93
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .parameter "exceptionType"
    .parameter "exceptionMessage"

    .prologue
    .line 106
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 107
    iput p1, p0, Lcom/android/email/mail/MessagingException;->mExceptionType:I

    .line 108
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .parameter "exceptionType"
    .parameter "message"

    .prologue
    .line 100
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 101
    iput p1, p0, Lcom/android/email/mail/MessagingException;->mExceptionType:I

    .line 102
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 78
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/email/mail/MessagingException;->mExceptionType:I

    .line 79
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .parameter "message"
    .parameter "throwable"

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 83
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/email/mail/MessagingException;->mExceptionType:I

    .line 84
    return-void
.end method


# virtual methods
.method public getExceptionType()I
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lcom/android/email/mail/MessagingException;->mExceptionType:I

    return v0
.end method
