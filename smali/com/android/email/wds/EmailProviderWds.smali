.class public Lcom/android/email/wds/EmailProviderWds;
.super Ljava/lang/Object;
.source "EmailProviderWds.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/wds/EmailProviderWds$1;,
        Lcom/android/email/wds/EmailProviderWds$MissingEmailConnectionException;
    }
.end annotation


# instance fields
.field public authNameFormat:Ljava/lang/String;

.field public autoCorrectedDomain:Ljava/lang/String;

.field public incomingUriTemplate:Ljava/net/URI;

.field public label:Ljava/lang/String;

.field public outgoingUriTemplate:Ljava/net/URI;


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/email/wds/ServicemineEmailSetting;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;,
            Lcom/android/email/wds/EmailProviderWds$MissingEmailConnectionException;
        }
    .end annotation

    .prologue
    .local p1, settings:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/email/wds/ServicemineEmailSetting;>;"
    const/4 v6, 0x0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const-string v4, "Unlabeled"

    iput-object v4, p0, Lcom/android/email/wds/EmailProviderWds;->label:Ljava/lang/String;

    .line 12
    const-string v4, "$user"

    iput-object v4, p0, Lcom/android/email/wds/EmailProviderWds;->authNameFormat:Ljava/lang/String;

    .line 15
    const/4 v2, 0x0

    .line 16
    .local v2, incomingSetting:Lcom/android/email/wds/ServicemineEmailSetting;
    const/4 v3, 0x0

    .line 18
    .local v3, outgoingSetting:Lcom/android/email/wds/ServicemineEmailSetting;
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/wds/ServicemineEmailSetting;

    .line 19
    .local v0, emailSetting:Lcom/android/email/wds/ServicemineEmailSetting;
    iget-object v4, v0, Lcom/android/email/wds/ServicemineEmailSetting;->protocol:Lcom/android/email/wds/ServicemineEmailSetting$Protocol;

    sget-object v5, Lcom/android/email/wds/ServicemineEmailSetting;->POP3:Lcom/android/email/wds/ServicemineEmailSetting$Protocol;

    if-ne v4, v5, :cond_1

    .line 20
    if-nez v2, :cond_0

    move-object v2, v0

    goto :goto_0

    .line 22
    :cond_1
    iget-object v4, v0, Lcom/android/email/wds/ServicemineEmailSetting;->protocol:Lcom/android/email/wds/ServicemineEmailSetting$Protocol;

    sget-object v5, Lcom/android/email/wds/ServicemineEmailSetting;->IMAP4:Lcom/android/email/wds/ServicemineEmailSetting$Protocol;

    if-ne v4, v5, :cond_2

    .line 23
    move-object v2, v0

    goto :goto_0

    .line 25
    :cond_2
    iget-object v4, v0, Lcom/android/email/wds/ServicemineEmailSetting;->protocol:Lcom/android/email/wds/ServicemineEmailSetting$Protocol;

    sget-object v5, Lcom/android/email/wds/ServicemineEmailSetting;->SMTP:Lcom/android/email/wds/ServicemineEmailSetting$Protocol;

    if-ne v4, v5, :cond_0

    .line 26
    if-nez v3, :cond_3

    .line 27
    move-object v3, v0

    goto :goto_0

    .line 29
    :cond_3
    iget-object v4, v3, Lcom/android/email/wds/ServicemineEmailSetting;->securityType:Lcom/android/email/wds/ServicemineEmailSetting$SecurityType;

    sget-object v5, Lcom/android/email/wds/ServicemineEmailSetting;->NONE:Lcom/android/email/wds/ServicemineEmailSetting$SecurityType;

    if-ne v4, v5, :cond_0

    .line 30
    move-object v3, v0

    goto :goto_0

    .line 35
    .end local v0           #emailSetting:Lcom/android/email/wds/ServicemineEmailSetting;
    :cond_4
    if-nez v2, :cond_5

    new-instance v4, Lcom/android/email/wds/EmailProviderWds$MissingEmailConnectionException;

    const-string v5, "No incoming connection provided"

    invoke-direct {v4, p0, v5, v6}, Lcom/android/email/wds/EmailProviderWds$MissingEmailConnectionException;-><init>(Lcom/android/email/wds/EmailProviderWds;Ljava/lang/String;Lcom/android/email/wds/EmailProviderWds$1;)V

    throw v4

    .line 36
    :cond_5
    if-nez v3, :cond_6

    new-instance v4, Lcom/android/email/wds/EmailProviderWds$MissingEmailConnectionException;

    const-string v5, "No outgoing connection provided"

    invoke-direct {v4, p0, v5, v6}, Lcom/android/email/wds/EmailProviderWds$MissingEmailConnectionException;-><init>(Lcom/android/email/wds/EmailProviderWds;Ljava/lang/String;Lcom/android/email/wds/EmailProviderWds$1;)V

    throw v4

    .line 38
    :cond_6
    invoke-virtual {v2}, Lcom/android/email/wds/ServicemineEmailSetting;->getUriTemplate()Ljava/net/URI;

    move-result-object v4

    iput-object v4, p0, Lcom/android/email/wds/EmailProviderWds;->incomingUriTemplate:Ljava/net/URI;

    .line 39
    invoke-virtual {v3}, Lcom/android/email/wds/ServicemineEmailSetting;->getUriTemplate()Ljava/net/URI;

    move-result-object v4

    iput-object v4, p0, Lcom/android/email/wds/EmailProviderWds;->outgoingUriTemplate:Ljava/net/URI;

    .line 40
    return-void
.end method
