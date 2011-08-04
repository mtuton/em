.class public Lcom/android/email/mail/store/ImapResponseParser;
.super Ljava/lang/Object;
.source "ImapResponseParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;,
        Lcom/android/email/mail/store/ImapResponseParser$ImapList;
    }
.end annotation


# static fields
.field private static final DATE_TIME_FORMAT:Ljava/text/SimpleDateFormat;

.field private static DEBUG_LOG_RAW_STREAM:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 40
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/email/mail/store/ImapResponseParser;->DEBUG_LOG_RAW_STREAM:Z

    .line 45
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd-MMM-yyyy HH:mm:ss Z"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/android/email/mail/store/ImapResponseParser;->DATE_TIME_FORMAT:Ljava/text/SimpleDateFormat;

    return-void
.end method
