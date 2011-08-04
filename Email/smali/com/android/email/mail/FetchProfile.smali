.class public Lcom/android/email/mail/FetchProfile;
.super Ljava/util/ArrayList;
.source "FetchProfile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/mail/FetchProfile$Item;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 41
    return-void
.end method


# virtual methods
.method public getFirstPart()Lcom/android/email/mail/Part;
    .locals 3

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/android/email/mail/FetchProfile;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 81
    .local v1, o:Ljava/lang/Object;
    instance-of v2, v1, Lcom/android/email/mail/Part;

    if-eqz v2, :cond_0

    .line 82
    check-cast v1, Lcom/android/email/mail/Part;

    .end local v1           #o:Ljava/lang/Object;
    move-object v2, v1

    .line 91
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
