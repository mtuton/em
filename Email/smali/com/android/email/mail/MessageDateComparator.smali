.class public Lcom/android/email/mail/MessageDateComparator;
.super Ljava/lang/Object;
.source "MessageDateComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/email/mail/Message;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/email/mail/Message;Lcom/android/email/mail/Message;)I
    .locals 4
    .parameter "o1"
    .parameter "o2"

    .prologue
    .line 24
    const/4 v1, 0x0

    .line 25
    .local v1, sentData1:Ljava/util/Date;
    const/4 v2, 0x0

    .line 27
    .local v2, sentData2:Ljava/util/Date;
    :try_start_0
    invoke-virtual {p1}, Lcom/android/email/mail/Message;->getSentDate()Ljava/util/Date;

    move-result-object v1

    .line 28
    invoke-virtual {p2}, Lcom/android/email/mail/Message;->getSentDate()Ljava/util/Date;

    move-result-object v2

    .line 29
    if-nez v1, :cond_0

    .line 30
    const/4 v3, 0x1

    .line 36
    :goto_0
    return v3

    .line 31
    :cond_0
    if-nez v2, :cond_1

    .line 32
    const/4 v3, -0x1

    goto :goto_0

    .line 34
    :cond_1
    invoke-virtual {v2, v1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_0

    .line 35
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 36
    .local v0, e:Ljava/lang/Exception;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    check-cast p1, Lcom/android/email/mail/Message;

    .end local p1
    check-cast p2, Lcom/android/email/mail/Message;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/email/mail/MessageDateComparator;->compare(Lcom/android/email/mail/Message;Lcom/android/email/mail/Message;)I

    move-result v0

    return v0
.end method
