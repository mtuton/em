.class public Lcom/android/email/ExchangeUtils;
.super Ljava/lang/Object;
.source "ExchangeUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/ExchangeUtils$NullEmailService;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    return-void
.end method

.method public static enableEasCalendarSync(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 73
    new-instance v0, Lcom/android/exchange/CalendarSyncEnabler;

    invoke-direct {v0, p0}, Lcom/android/exchange/CalendarSyncEnabler;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/exchange/CalendarSyncEnabler;->enableEasCalendarSync()V

    .line 75
    return-void
.end method

.method public static getExchangeEmailService(Landroid/content/Context;Lcom/android/email/service/IEmailServiceCallback;)Lcom/android/email/service/IEmailService;
    .locals 2
    .parameter "context"
    .parameter "callback"

    .prologue
    .line 58
    const/4 v0, 0x0

    .line 60
    .local v0, ret:Lcom/android/email/service/IEmailService;
    new-instance v0, Lcom/android/email/service/EmailServiceProxy;

    .end local v0           #ret:Lcom/android/email/service/IEmailService;
    const-class v1, Lcom/android/exchange/SyncManager;

    invoke-direct {v0, p0, v1, p1}, Lcom/android/email/service/EmailServiceProxy;-><init>(Landroid/content/Context;Ljava/lang/Class;Lcom/android/email/service/IEmailServiceCallback;)V

    .line 62
    .restart local v0       #ret:Lcom/android/email/service/IEmailService;
    if-nez v0, :cond_0

    .line 63
    sget-object v0, Lcom/android/email/ExchangeUtils$NullEmailService;->INSTANCE:Lcom/android/email/ExchangeUtils$NullEmailService;

    .line 65
    :cond_0
    return-object v0
.end method

.method public static startExchangeService(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 45
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/exchange/SyncManager;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 47
    return-void
.end method
