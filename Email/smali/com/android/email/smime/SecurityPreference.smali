.class public Lcom/android/email/smime/SecurityPreference;
.super Landroid/preference/PreferenceActivity;
.source "SecurityPreference.java"


# instance fields
.field private mAccount:Lcom/android/email/provider/EmailContent$Account;

.field private mAccountId:J

.field private mSmimeEncryptAll:Landroid/preference/CheckBoxPreference;

.field private mSmimeEncryptAllPolicyApplied:Z

.field private mSmimeEncryptionAlgorithm:Landroid/preference/ListPreference;

.field private mSmimeOwnCertificateAlias:Ljava/lang/String;

.field private mSmimeSignAlgorithm:Landroid/preference/ListPreference;

.field private mSmimeSignAll:Landroid/preference/CheckBoxPreference;

.field private mSmimeSignAllPolicyApplied:Z

.field private policiesList:Landroid/preference/PreferenceScreen;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 38
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/email/smime/SecurityPreference;->mAccountId:J

    return-void
.end method

.method static synthetic access$000(Lcom/android/email/smime/SecurityPreference;)Landroid/preference/ListPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/email/smime/SecurityPreference;->mSmimeSignAlgorithm:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/email/smime/SecurityPreference;)Landroid/preference/ListPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/email/smime/SecurityPreference;->mSmimeEncryptionAlgorithm:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/email/smime/SecurityPreference;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 20
    iget-wide v0, p0, Lcom/android/email/smime/SecurityPreference;->mAccountId:J

    return-wide v0
.end method

.method private setCertificateSummary()V
    .locals 2

    .prologue
    .line 219
    const-string v1, "account_own_certificate"

    invoke-virtual {p0, v1}, Lcom/android/email/smime/SecurityPreference;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 220
    .local v0, ownCertificatePref:Landroid/preference/Preference;
    iget-object v1, p0, Lcom/android/email/smime/SecurityPreference;->mSmimeOwnCertificateAlias:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/email/smime/SecurityPreference;->mSmimeOwnCertificateAlias:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 221
    iget-object v1, p0, Lcom/android/email/smime/SecurityPreference;->mSmimeOwnCertificateAlias:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 226
    :goto_0
    return-void

    .line 223
    :cond_0
    const v1, 0x7f080296

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 259
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 272
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const-wide/16 v8, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 56
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    const v4, 0x7f050008

    invoke-virtual {p0, v4}, Lcom/android/email/smime/SecurityPreference;->addPreferencesFromResource(I)V

    .line 59
    invoke-virtual {p0}, Lcom/android/email/smime/SecurityPreference;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "account_id"

    invoke-virtual {v4, v5, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/email/smime/SecurityPreference;->mAccountId:J

    .line 60
    iget-wide v4, p0, Lcom/android/email/smime/SecurityPreference;->mAccountId:J

    cmp-long v4, v4, v8

    if-nez v4, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/android/email/smime/SecurityPreference;->finish()V

    .line 62
    :cond_0
    iget-wide v4, p0, Lcom/android/email/smime/SecurityPreference;->mAccountId:J

    invoke-static {p0, v4, v5}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v4

    iput-object v4, p0, Lcom/android/email/smime/SecurityPreference;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    .line 64
    const-string v4, "account_own_certificate"

    invoke-virtual {p0, v4}, Lcom/android/email/smime/SecurityPreference;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 65
    .local v0, ownCertificatePref:Landroid/preference/Preference;
    iget-object v4, p0, Lcom/android/email/smime/SecurityPreference;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {v4}, Lcom/android/email/provider/EmailContent$Account;->getSmimeOwnCertificate()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/email/smime/SecurityPreference;->mSmimeOwnCertificateAlias:Ljava/lang/String;

    .line 66
    invoke-direct {p0}, Lcom/android/email/smime/SecurityPreference;->setCertificateSummary()V

    .line 67
    new-instance v4, Lcom/android/email/smime/SecurityPreference$1;

    invoke-direct {v4, p0}, Lcom/android/email/smime/SecurityPreference$1;-><init>(Lcom/android/email/smime/SecurityPreference;)V

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 74
    const-string v4, "account_smime_encrypt_all"

    invoke-virtual {p0, v4}, Lcom/android/email/smime/SecurityPreference;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/email/smime/SecurityPreference;->mSmimeEncryptAll:Landroid/preference/CheckBoxPreference;

    .line 75
    const-string v4, "account_smime_sign_all"

    invoke-virtual {p0, v4}, Lcom/android/email/smime/SecurityPreference;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/email/smime/SecurityPreference;->mSmimeSignAll:Landroid/preference/CheckBoxPreference;

    .line 77
    invoke-static {p0}, Lcom/android/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object v2

    .line 78
    .local v2, sp:Lcom/android/email/SecurityPolicy;
    invoke-virtual {v2}, Lcom/android/email/SecurityPolicy;->getAggregatePolicy()Lcom/android/email/SecurityPolicy$PolicySet;

    move-result-object v1

    .line 79
    .local v1, ps:Lcom/android/email/SecurityPolicy$PolicySet;
    iget-boolean v4, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mRequireSignedSMIMEMessages:Z

    iput-boolean v4, p0, Lcom/android/email/smime/SecurityPreference;->mSmimeSignAllPolicyApplied:Z

    .line 80
    iget-boolean v4, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mRequireEncryptedSMIMEMessages:Z

    iput-boolean v4, p0, Lcom/android/email/smime/SecurityPreference;->mSmimeEncryptAllPolicyApplied:Z

    .line 82
    iget-boolean v4, p0, Lcom/android/email/smime/SecurityPreference;->mSmimeEncryptAllPolicyApplied:Z

    if-eqz v4, :cond_2

    .line 83
    iget-object v4, p0, Lcom/android/email/smime/SecurityPreference;->mSmimeEncryptAll:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 84
    iget-object v4, p0, Lcom/android/email/smime/SecurityPreference;->mSmimeEncryptAll:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v6}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 92
    :goto_0
    iget-boolean v4, p0, Lcom/android/email/smime/SecurityPreference;->mSmimeSignAllPolicyApplied:Z

    if-eqz v4, :cond_4

    .line 93
    iget-object v4, p0, Lcom/android/email/smime/SecurityPreference;->mSmimeSignAll:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 94
    iget-object v4, p0, Lcom/android/email/smime/SecurityPreference;->mSmimeSignAll:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v6}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 103
    :goto_1
    iget-boolean v4, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mAllowSMIMESoftCerts:Z

    if-nez v4, :cond_1

    .line 104
    invoke-virtual {p0}, Lcom/android/email/smime/SecurityPreference;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0802a5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 105
    .local v3, text:Ljava/lang/String;
    invoke-static {p0, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 108
    .end local v3           #text:Ljava/lang/String;
    :cond_1
    const-string v4, "account_smime_sign_algorithm"

    invoke-virtual {p0, v4}, Lcom/android/email/smime/SecurityPreference;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    iput-object v4, p0, Lcom/android/email/smime/SecurityPreference;->mSmimeSignAlgorithm:Landroid/preference/ListPreference;

    .line 109
    const-string v4, "account_smime_encryption_algorithm"

    invoke-virtual {p0, v4}, Lcom/android/email/smime/SecurityPreference;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    iput-object v4, p0, Lcom/android/email/smime/SecurityPreference;->mSmimeEncryptionAlgorithm:Landroid/preference/ListPreference;

    .line 110
    const-string v4, "security_policy_list"

    invoke-virtual {p0, v4}, Lcom/android/email/smime/SecurityPreference;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceScreen;

    iput-object v4, p0, Lcom/android/email/smime/SecurityPreference;->policiesList:Landroid/preference/PreferenceScreen;

    .line 133
    iget-boolean v4, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mRequireSignedSMIMEMessages:Z

    if-eqz v4, :cond_6

    .line 134
    iget-object v4, p0, Lcom/android/email/smime/SecurityPreference;->mSmimeSignAlgorithm:Landroid/preference/ListPreference;

    iget v5, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mRequireSignedSMIMEAlgorithm:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 135
    iget-object v4, p0, Lcom/android/email/smime/SecurityPreference;->mSmimeSignAlgorithm:Landroid/preference/ListPreference;

    invoke-virtual {v4, v6}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 149
    :goto_2
    iget-object v4, p0, Lcom/android/email/smime/SecurityPreference;->mSmimeSignAlgorithm:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/android/email/smime/SecurityPreference;->mSmimeSignAlgorithm:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 168
    iget-boolean v4, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mRequireEncryptedSMIMEMessages:Z

    if-eqz v4, :cond_7

    .line 169
    iget-object v4, p0, Lcom/android/email/smime/SecurityPreference;->mSmimeEncryptionAlgorithm:Landroid/preference/ListPreference;

    iget v5, v1, Lcom/android/email/SecurityPolicy$PolicySet;->mRequireEncryptionSMIMEAlgorithm:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 170
    iget-object v4, p0, Lcom/android/email/smime/SecurityPreference;->mSmimeEncryptionAlgorithm:Landroid/preference/ListPreference;

    invoke-virtual {v4, v6}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 185
    :goto_3
    iget-object v4, p0, Lcom/android/email/smime/SecurityPreference;->mSmimeEncryptionAlgorithm:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/android/email/smime/SecurityPreference;->mSmimeEncryptionAlgorithm:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 187
    iget-object v4, p0, Lcom/android/email/smime/SecurityPreference;->policiesList:Landroid/preference/PreferenceScreen;

    new-instance v5, Lcom/android/email/smime/SecurityPreference$4;

    invoke-direct {v5, p0}, Lcom/android/email/smime/SecurityPreference$4;-><init>(Lcom/android/email/smime/SecurityPreference;)V

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 193
    return-void

    .line 86
    :cond_2
    if-eqz p1, :cond_3

    .line 87
    iget-object v4, p0, Lcom/android/email/smime/SecurityPreference;->mSmimeEncryptAll:Landroid/preference/CheckBoxPreference;

    const-string v5, "com.android.email.securitypreference.encrypt"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_0

    .line 89
    :cond_3
    iget-object v4, p0, Lcom/android/email/smime/SecurityPreference;->mSmimeEncryptAll:Landroid/preference/CheckBoxPreference;

    iget-object v5, p0, Lcom/android/email/smime/SecurityPreference;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-boolean v5, v5, Lcom/android/email/provider/EmailContent$Account;->mSmimeEncryptAll:Z

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_0

    .line 96
    :cond_4
    if-eqz p1, :cond_5

    .line 97
    iget-object v4, p0, Lcom/android/email/smime/SecurityPreference;->mSmimeSignAll:Landroid/preference/CheckBoxPreference;

    const-string v5, "com.android.email.securitypreference.sign"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_1

    .line 99
    :cond_5
    iget-object v4, p0, Lcom/android/email/smime/SecurityPreference;->mSmimeSignAll:Landroid/preference/CheckBoxPreference;

    iget-object v5, p0, Lcom/android/email/smime/SecurityPreference;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-boolean v5, v5, Lcom/android/email/provider/EmailContent$Account;->mSmimeSignAll:Z

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_1

    .line 137
    :cond_6
    iget-object v4, p0, Lcom/android/email/smime/SecurityPreference;->mSmimeSignAlgorithm:Landroid/preference/ListPreference;

    invoke-virtual {v4, v7}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 138
    iget-object v4, p0, Lcom/android/email/smime/SecurityPreference;->mSmimeSignAlgorithm:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/android/email/smime/SecurityPreference;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget v5, v5, Lcom/android/email/provider/EmailContent$Account;->mSmimeSignAlgorithm:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 139
    iget-object v4, p0, Lcom/android/email/smime/SecurityPreference;->mSmimeSignAlgorithm:Landroid/preference/ListPreference;

    new-instance v5, Lcom/android/email/smime/SecurityPreference$2;

    invoke-direct {v5, p0}, Lcom/android/email/smime/SecurityPreference$2;-><init>(Lcom/android/email/smime/SecurityPreference;)V

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_2

    .line 172
    :cond_7
    iget-object v4, p0, Lcom/android/email/smime/SecurityPreference;->mSmimeEncryptionAlgorithm:Landroid/preference/ListPreference;

    invoke-virtual {v4, v7}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 173
    iget-object v4, p0, Lcom/android/email/smime/SecurityPreference;->mSmimeEncryptionAlgorithm:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/android/email/smime/SecurityPreference;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget v5, v5, Lcom/android/email/provider/EmailContent$Account;->mSmimeEncryptionAlgorithm:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 174
    iget-object v4, p0, Lcom/android/email/smime/SecurityPreference;->mSmimeEncryptionAlgorithm:Landroid/preference/ListPreference;

    new-instance v5, Lcom/android/email/smime/SecurityPreference$3;

    invoke-direct {v5, p0}, Lcom/android/email/smime/SecurityPreference$3;-><init>(Lcom/android/email/smime/SecurityPreference;)V

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_3
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 230
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 232
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 233
    .local v0, data:Landroid/content/Intent;
    const-string v1, "SmimeOwnCertificateAlias"

    iget-object v2, p0, Lcom/android/email/smime/SecurityPreference;->mSmimeOwnCertificateAlias:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 236
    const-string v1, "SmimeEncryptAll"

    iget-object v2, p0, Lcom/android/email/smime/SecurityPreference;->mSmimeEncryptAll:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 240
    const-string v1, "SmimeSignAll"

    iget-object v2, p0, Lcom/android/email/smime/SecurityPreference;->mSmimeSignAll:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 245
    const-string v1, "SmimeSignAlgorithm"

    iget-object v2, p0, Lcom/android/email/smime/SecurityPreference;->mSmimeSignAlgorithm:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 250
    const-string v1, "SmimeEncryptionAlgorithm"

    iget-object v2, p0, Lcom/android/email/smime/SecurityPreference;->mSmimeEncryptionAlgorithm:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 252
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/email/smime/SecurityPreference;->setResult(ILandroid/content/Intent;)V

    .line 254
    .end local v0           #data:Landroid/content/Intent;
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 197
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 198
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 276
    const-string v0, "com.android.email.securitypreference.sign"

    iget-object v1, p0, Lcom/android/email/smime/SecurityPreference;->mSmimeSignAll:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 277
    const-string v0, "com.android.email.securitypreference.encrypt"

    iget-object v1, p0, Lcom/android/email/smime/SecurityPreference;->mSmimeEncryptAll:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 278
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 279
    return-void
.end method
