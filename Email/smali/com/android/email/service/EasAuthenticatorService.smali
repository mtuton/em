.class public Lcom/android/email/service/EasAuthenticatorService;
.super Landroid/app/Service;
.source "EasAuthenticatorService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/service/EasAuthenticatorService$EasAuthenticator;
    }
.end annotation


# static fields
.field public static final OPTIONS_CALENDAR_SYNC_ENABLED:Ljava/lang/String; = "calendar"

.field public static final OPTIONS_CONTACTS_SYNC_ENABLED:Ljava/lang/String; = "contacts"

.field public static final OPTIONS_PASSWORD:Ljava/lang/String; = "password"

.field public static final OPTIONS_USERNAME:Ljava/lang/String; = "username"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 47
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .parameter "intent"

    .prologue
    .line 148
    const-string v0, "android.accounts.AccountAuthenticator"

    .line 150
    .local v0, authenticatorIntent:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 151
    new-instance v1, Lcom/android/email/service/EasAuthenticatorService$EasAuthenticator;

    invoke-direct {v1, p0, p0}, Lcom/android/email/service/EasAuthenticatorService$EasAuthenticator;-><init>(Lcom/android/email/service/EasAuthenticatorService;Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/android/email/service/EasAuthenticatorService$EasAuthenticator;->getIBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 153
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
