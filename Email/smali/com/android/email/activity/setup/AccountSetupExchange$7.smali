.class Lcom/android/email/activity/setup/AccountSetupExchange$7;
.super Ljava/lang/Object;
.source "AccountSetupExchange.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/AccountSetupExchange;->doNextAction()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSetupExchange;

.field final synthetic val$im:Landroid/view/inputmethod/InputMethodManager;

.field final synthetic val$mView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSetupExchange;Landroid/view/inputmethod/InputMethodManager;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 813
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupExchange$7;->this$0:Lcom/android/email/activity/setup/AccountSetupExchange;

    iput-object p2, p0, Lcom/android/email/activity/setup/AccountSetupExchange$7;->val$im:Landroid/view/inputmethod/InputMethodManager;

    iput-object p3, p0, Lcom/android/email/activity/setup/AccountSetupExchange$7;->val$mView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 816
    const-wide/16 v1, 0x1f4

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 821
    :goto_0
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupExchange$7;->val$im:Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupExchange$7;->val$mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 822
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupExchange$7;->this$0:Lcom/android/email/activity/setup/AccountSetupExchange;

    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSetupExchange;->access$300(Lcom/android/email/activity/setup/AccountSetupExchange;)V

    .line 824
    return-void

    .line 817
    :catch_0
    move-exception v0

    .line 819
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
