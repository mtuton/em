.class Lcom/android/email/activity/setup/AccountSetupBasics$GetInfoFromWDSTask;
.super Landroid/os/AsyncTask;
.source "AccountSetupBasics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/AccountSetupBasics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GetInfoFromWDSTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;",
        ">;"
    }
.end annotation


# instance fields
.field mDomain:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSetupBasics;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSetupBasics;)V
    .locals 1
    .parameter

    .prologue
    .line 888
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupBasics$GetInfoFromWDSTask;->this$0:Lcom/android/email/activity/setup/AccountSetupBasics;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 889
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics$GetInfoFromWDSTask;->mDomain:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;
    .locals 7
    .parameter "domain"

    .prologue
    const-string v6, "SetBasics"

    const-string v5, ""

    .line 893
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupBasics$GetInfoFromWDSTask;->this$0:Lcom/android/email/activity/setup/AccountSetupBasics;

    invoke-static {v3}, Lcom/android/email/activity/setup/AccountSetupBasics;->access$300(Lcom/android/email/activity/setup/AccountSetupBasics;)Lcom/android/email/activity/setup/AccountSetupBasics$AccountSetupBasicsHandler;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/email/activity/setup/AccountSetupBasics$AccountSetupBasicsHandler;->progress(Z)V

    .line 894
    const/4 v3, 0x0

    aget-object v3, p1, v3

    iput-object v3, p0, Lcom/android/email/activity/setup/AccountSetupBasics$GetInfoFromWDSTask;->mDomain:Ljava/lang/String;

    .line 899
    new-instance v2, Lcom/android/email/wds/ServicemineClient;

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupBasics$GetInfoFromWDSTask;->this$0:Lcom/android/email/activity/setup/AccountSetupBasics;

    invoke-direct {v2, v3}, Lcom/android/email/wds/ServicemineClient;-><init>(Landroid/content/Context;)V

    .line 900
    .local v2, sc:Lcom/android/email/wds/ServicemineClient;
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupBasics$GetInfoFromWDSTask;->mDomain:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/email/wds/ServicemineClient;->getWDSResponce(Ljava/lang/String;)Lcom/android/email/wds/EmailProviderWds;

    move-result-object v0

    .line 901
    .local v0, ep:Lcom/android/email/wds/EmailProviderWds;
    if-nez v0, :cond_0

    .line 902
    const/4 v3, 0x0

    .line 915
    :goto_0
    return-object v3

    .line 904
    :cond_0
    new-instance v1, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    invoke-direct {v1}, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;-><init>()V

    .line 905
    .local v1, provider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;
    const-string v3, ""

    iput-object v5, v1, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->id:Ljava/lang/String;

    .line 906
    const-string v3, ""

    iput-object v5, v1, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->note:Ljava/lang/String;

    .line 907
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupBasics$GetInfoFromWDSTask;->mDomain:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->domain:Ljava/lang/String;

    .line 908
    iget-object v3, v0, Lcom/android/email/wds/EmailProviderWds;->authNameFormat:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->incomingUsernameTemplate:Ljava/lang/String;

    .line 909
    iget-object v3, v0, Lcom/android/email/wds/EmailProviderWds;->authNameFormat:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->outgoingUsernameTemplate:Ljava/lang/String;

    .line 910
    iget-object v3, v0, Lcom/android/email/wds/EmailProviderWds;->incomingUriTemplate:Ljava/net/URI;

    iput-object v3, v1, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->incomingUriTemplate:Ljava/net/URI;

    .line 911
    iget-object v3, v0, Lcom/android/email/wds/EmailProviderWds;->outgoingUriTemplate:Ljava/net/URI;

    iput-object v3, v1, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->outgoingUriTemplate:Ljava/net/URI;

    .line 912
    const-string v3, "SetBasics"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "in : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/email/wds/EmailProviderWds;->incomingUriTemplate:Ljava/net/URI;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 913
    const-string v3, "SetBasics"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "out : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/email/wds/EmailProviderWds;->outgoingUriTemplate:Ljava/net/URI;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v1

    .line 915
    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 888
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/setup/AccountSetupBasics$GetInfoFromWDSTask;->doInBackground([Ljava/lang/String;)Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 920
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics$GetInfoFromWDSTask;->this$0:Lcom/android/email/activity/setup/AccountSetupBasics;

    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSetupBasics;->access$200(Lcom/android/email/activity/setup/AccountSetupBasics;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics$GetInfoFromWDSTask;->this$0:Lcom/android/email/activity/setup/AccountSetupBasics;

    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSetupBasics;->access$200(Lcom/android/email/activity/setup/AccountSetupBasics;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 921
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics$GetInfoFromWDSTask;->this$0:Lcom/android/email/activity/setup/AccountSetupBasics;

    if-eqz p1, :cond_1

    move-object v1, p1

    :goto_0
    invoke-static {v0, v1}, Lcom/android/email/activity/setup/AccountSetupBasics;->access$400(Lcom/android/email/activity/setup/AccountSetupBasics;Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;)V

    .line 922
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics$GetInfoFromWDSTask;->this$0:Lcom/android/email/activity/setup/AccountSetupBasics;

    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSetupBasics;->access$300(Lcom/android/email/activity/setup/AccountSetupBasics;)Lcom/android/email/activity/setup/AccountSetupBasics$AccountSetupBasicsHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupBasics$AccountSetupBasicsHandler;->progress(Z)V

    .line 924
    :cond_0
    return-void

    .line 921
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 888
    check-cast p1, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/setup/AccountSetupBasics$GetInfoFromWDSTask;->onPostExecute(Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;)V

    return-void
.end method
