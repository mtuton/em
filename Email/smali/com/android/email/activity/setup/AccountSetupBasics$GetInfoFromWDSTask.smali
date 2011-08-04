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
    .line 1011
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupBasics$GetInfoFromWDSTask;->this$0:Lcom/android/email/activity/setup/AccountSetupBasics;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1012
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics$GetInfoFromWDSTask;->mDomain:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;
    .locals 11
    .parameter "domain"

    .prologue
    const/4 v8, 0x0

    const-string v10, "out : "

    const-string v9, "in : "

    const-string v7, "SetBasics"

    const-string v6, ""

    .line 1017
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupBasics$GetInfoFromWDSTask;->this$0:Lcom/android/email/activity/setup/AccountSetupBasics;

    invoke-static {v4}, Lcom/android/email/activity/setup/AccountSetupBasics;->access$300(Lcom/android/email/activity/setup/AccountSetupBasics;)Lcom/android/email/activity/setup/AccountSetupBasics$AccountSetupBasicsHandler;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/email/activity/setup/AccountSetupBasics$AccountSetupBasicsHandler;->progress(Z)V

    .line 1018
    const/4 v4, 0x0

    aget-object v4, p1, v4

    iput-object v4, p0, Lcom/android/email/activity/setup/AccountSetupBasics$GetInfoFromWDSTask;->mDomain:Ljava/lang/String;

    .line 1023
    new-instance v3, Lcom/android/email/wds/ServicemineClient;

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupBasics$GetInfoFromWDSTask;->this$0:Lcom/android/email/activity/setup/AccountSetupBasics;

    invoke-direct {v3, v4}, Lcom/android/email/wds/ServicemineClient;-><init>(Landroid/content/Context;)V

    .line 1024
    .local v3, sc:Lcom/android/email/wds/ServicemineClient;
    const/4 v1, 0x0

    .line 1027
    .local v1, ep:Lcom/android/email/wds/EmailProviderWds;
    :try_start_0
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupBasics$GetInfoFromWDSTask;->mDomain:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/email/wds/ServicemineClient;->getWDSResponce(Ljava/lang/String;)Lcom/android/email/wds/EmailProviderWds;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1033
    if-nez v1, :cond_1

    :cond_0
    move-object v4, v8

    .line 1046
    :goto_0
    return-object v4

    .line 1029
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 1030
    .local v0, e:Ljava/lang/IllegalArgumentException;
    :try_start_1
    const-string v4, "Email"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1033
    if-eqz v1, :cond_0

    .line 1035
    new-instance v2, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    invoke-direct {v2}, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;-><init>()V

    .line 1036
    .local v2, provider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;
    const-string v4, ""

    iput-object v6, v2, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->id:Ljava/lang/String;

    .line 1037
    const-string v4, ""

    iput-object v6, v2, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->note:Ljava/lang/String;

    .line 1038
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupBasics$GetInfoFromWDSTask;->mDomain:Ljava/lang/String;

    iput-object v4, v2, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->domain:Ljava/lang/String;

    .line 1039
    throw v1

    #Unreachable code
    #throw v2

    .line 1040
    #throw v1

    #throw v2

    .line 1041
    #throw v1

    #throw v2

    .line 1042
    #throw v1

    #throw v2

    .line 1043
    #const-string v4, "SetBasics"

    #new-instance v4, Ljava/lang/StringBuilder;

    #invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #const-string v5, "in : "

    #throw v4

    #move-result-object v4

    #throw v1

    #throw v4

    #move-result-object v4

    #throw v4

    #move-result-object v4

    #invoke-static {v7, v4}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 1044
    #const-string v4, "SetBasics"

    #new-instance v4, Ljava/lang/StringBuilder;

    #invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #const-string v5, "out : "

    #throw v4

    #move-result-object v4

    #throw v1

    #throw v4

    #move-result-object v4

    #throw v4

    #move-result-object v4

    #invoke-static {v7, v4}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :goto_1
    move-object v4, v2

    .line 1046
    goto :goto_0

    .line 1033
    .end local v2           #provider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;
    :catchall_0
    move-exception v4

    if-eqz v1, :cond_0

    .line 1035
    new-instance v2, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    invoke-direct {v2}, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;-><init>()V

    .line 1036
    .restart local v2       #provider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;
    const-string v4, ""

    iput-object v6, v2, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->id:Ljava/lang/String;

    .line 1037
    const-string v4, ""

    iput-object v6, v2, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->note:Ljava/lang/String;

    .line 1038
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupBasics$GetInfoFromWDSTask;->mDomain:Ljava/lang/String;

    iput-object v4, v2, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->domain:Ljava/lang/String;

    .line 1039
    throw v1

    #Unreachable code
    #throw v2

    .line 1040
    #throw v1

    #throw v2

    .line 1041
    #throw v1

    #throw v2

    .line 1042
    #throw v1

    #throw v2

    .line 1043
    #const-string v4, "SetBasics"

    #new-instance v4, Ljava/lang/StringBuilder;

    #invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #const-string v5, "in : "

    #throw v4

    #move-result-object v4

    #throw v1

    #throw v4

    #move-result-object v4

    #throw v4

    #move-result-object v4

    #invoke-static {v7, v4}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 1044
    #const-string v4, "SetBasics"

    #new-instance v4, Ljava/lang/StringBuilder;

    #invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #const-string v5, "out : "

    #throw v4

    #move-result-object v4

    #throw v1

    #throw v4

    #move-result-object v4

    #throw v4

    #move-result-object v4

    #invoke-static {v7, v4}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    #goto :goto_1

    .line 1035
    .end local v2           #provider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;
    :cond_1
    new-instance v2, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    invoke-direct {v2}, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;-><init>()V

    .line 1036
    .restart local v2       #provider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;
    const-string v4, ""

    iput-object v6, v2, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->id:Ljava/lang/String;

    .line 1037
    const-string v4, ""

    iput-object v6, v2, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->note:Ljava/lang/String;

    .line 1038
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupBasics$GetInfoFromWDSTask;->mDomain:Ljava/lang/String;

    iput-object v4, v2, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->domain:Ljava/lang/String;

    .line 1039
    iget-object v4, v1, Lcom/android/email/wds/EmailProviderWds;->authNameFormat:Ljava/lang/String;

    iput-object v4, v2, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->incomingUsernameTemplate:Ljava/lang/String;

    .line 1040
    iget-object v4, v1, Lcom/android/email/wds/EmailProviderWds;->authNameFormat:Ljava/lang/String;

    iput-object v4, v2, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->outgoingUsernameTemplate:Ljava/lang/String;

    .line 1041
    iget-object v4, v1, Lcom/android/email/wds/EmailProviderWds;->incomingUriTemplate:Ljava/net/URI;

    iput-object v4, v2, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->incomingUriTemplate:Ljava/net/URI;

    .line 1042
    iget-object v4, v1, Lcom/android/email/wds/EmailProviderWds;->outgoingUriTemplate:Ljava/net/URI;

    iput-object v4, v2, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->outgoingUriTemplate:Ljava/net/URI;

    .line 1043
    const-string v4, "SetBasics"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "in : "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/email/wds/EmailProviderWds;->incomingUriTemplate:Ljava/net/URI;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 1044
    const-string v4, "SetBasics"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "out : "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/email/wds/EmailProviderWds;->outgoingUriTemplate:Ljava/net/URI;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1011
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
    .line 1053
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

    .line 1054
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics$GetInfoFromWDSTask;->this$0:Lcom/android/email/activity/setup/AccountSetupBasics;

    if-eqz p1, :cond_1

    move-object v1, p1

    :goto_0
    invoke-static {v0, v1}, Lcom/android/email/activity/setup/AccountSetupBasics;->access$400(Lcom/android/email/activity/setup/AccountSetupBasics;Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;)V

    .line 1055
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics$GetInfoFromWDSTask;->this$0:Lcom/android/email/activity/setup/AccountSetupBasics;

    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSetupBasics;->access$300(Lcom/android/email/activity/setup/AccountSetupBasics;)Lcom/android/email/activity/setup/AccountSetupBasics$AccountSetupBasicsHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupBasics$AccountSetupBasicsHandler;->progress(Z)V

    .line 1057
    :cond_0
    return-void

    .line 1054
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1011
    check-cast p1, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/setup/AccountSetupBasics$GetInfoFromWDSTask;->onPostExecute(Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;)V

    return-void
.end method
