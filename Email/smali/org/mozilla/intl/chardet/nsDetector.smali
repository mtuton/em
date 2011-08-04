.class public Lorg/mozilla/intl/chardet/nsDetector;
.super Lorg/mozilla/intl/chardet/nsPSMDetector;
.source "nsDetector.java"

# interfaces
.implements Lorg/mozilla/intl/chardet/nsICharsetDetector;


# instance fields
.field mObserver:Lorg/mozilla/intl/chardet/nsICharsetDetectionObserver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 119
    invoke-direct {p0}, Lorg/mozilla/intl/chardet/nsPSMDetector;-><init>()V

    .line 113
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mozilla/intl/chardet/nsDetector;->mObserver:Lorg/mozilla/intl/chardet/nsICharsetDetectionObserver;

    .line 121
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "langFlag"

    .prologue
    .line 127
    invoke-direct {p0, p1}, Lorg/mozilla/intl/chardet/nsPSMDetector;-><init>(I)V

    .line 113
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mozilla/intl/chardet/nsDetector;->mObserver:Lorg/mozilla/intl/chardet/nsICharsetDetectionObserver;

    .line 129
    return-void
.end method


# virtual methods
.method public DoIt([BIZ)Z
    .locals 1
    .parameter "aBuf"
    .parameter "aLen"
    .parameter "oDontFeedMe"

    .prologue
    .line 151
    if-eqz p1, :cond_0

    if-eqz p3, :cond_1

    .line 153
    :cond_0
    const/4 v0, 0x0

    .line 159
    :goto_0
    return v0

    .line 157
    :cond_1
    invoke-virtual {p0, p1, p2}, Lorg/mozilla/intl/chardet/nsDetector;->HandleData([BI)Z

    .line 159
    iget-boolean v0, p0, Lorg/mozilla/intl/chardet/nsDetector;->mDone:Z

    goto :goto_0
.end method

.method public Init(Lorg/mozilla/intl/chardet/nsICharsetDetectionObserver;)V
    .locals 0
    .parameter "aObserver"

    .prologue
    .line 137
    iput-object p1, p0, Lorg/mozilla/intl/chardet/nsDetector;->mObserver:Lorg/mozilla/intl/chardet/nsICharsetDetectionObserver;

    .line 139
    return-void
.end method

.method public Report(Ljava/lang/String;)V
    .locals 1
    .parameter "charset"

    .prologue
    .line 177
    iget-object v0, p0, Lorg/mozilla/intl/chardet/nsDetector;->mObserver:Lorg/mozilla/intl/chardet/nsICharsetDetectionObserver;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lorg/mozilla/intl/chardet/nsDetector;->mObserver:Lorg/mozilla/intl/chardet/nsICharsetDetectionObserver;

    invoke-interface {v0, p1}, Lorg/mozilla/intl/chardet/nsICharsetDetectionObserver;->Notify(Ljava/lang/String;)V

    .line 181
    :cond_0
    return-void
.end method

.method public isAscii([BI)Z
    .locals 2
    .parameter "aBuf"
    .parameter "aLen"

    .prologue
    .line 189
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p2, :cond_1

    .line 191
    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_0

    .line 193
    const/4 v1, 0x0

    .line 199
    :goto_1
    return v1

    .line 189
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 199
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method
