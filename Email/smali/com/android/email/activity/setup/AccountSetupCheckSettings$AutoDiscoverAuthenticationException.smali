.class Lcom/android/email/activity/setup/AccountSetupCheckSettings$AutoDiscoverAuthenticationException;
.super Lcom/android/email/mail/AuthenticationFailedException;
.source "AccountSetupCheckSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/AccountSetupCheckSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutoDiscoverAuthenticationException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSetupCheckSettings;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/setup/AccountSetupCheckSettings;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "message"

    .prologue
    .line 150
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupCheckSettings$AutoDiscoverAuthenticationException;->this$0:Lcom/android/email/activity/setup/AccountSetupCheckSettings;

    .line 151
    invoke-direct {p0, p2}, Lcom/android/email/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;)V

    .line 152
    return-void
.end method
