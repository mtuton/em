.class public Lcom/android/email/activity/Debug;
.super Landroid/app/Activity;
.source "Debug.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mEnableDebugLoggingView:Landroid/widget/CheckBox;

.field private mEnableExchangeFileLoggingView:Landroid/widget/CheckBox;

.field private mEnableExchangeLoggingView:Landroid/widget/CheckBox;

.field private mEnableSensitiveLoggingView:Landroid/widget/CheckBox;

.field private mPreferences:Lcom/android/email/Preferences;

.field private mVersionView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static updateLoggingFlags(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    .line 124
    invoke-static {p0}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v4

    .line 125
    .local v4, prefs:Lcom/android/email/Preferences;
    invoke-virtual {v4}, Lcom/android/email/Preferences;->getEnableDebugLogging()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    move v1, v5

    .line 126
    .local v1, debugLogging:I
    :goto_0
    invoke-virtual {v4}, Lcom/android/email/Preferences;->getEnableExchangeLogging()Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x2

    move v2, v5

    .line 127
    .local v2, exchangeLogging:I
    :goto_1
    invoke-virtual {v4}, Lcom/android/email/Preferences;->getEnableExchangeFileLogging()Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x4

    move v3, v5

    .line 128
    .local v3, fileLogging:I
    :goto_2
    or-int v5, v1, v2

    or-int v0, v5, v3

    .line 129
    .local v0, debugBits:I
    invoke-static {p0}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/android/email/Controller;->serviceLogging(I)V

    .line 131
    return-void

    .end local v0           #debugBits:I
    .end local v1           #debugLogging:I
    .end local v2           #exchangeLogging:I
    .end local v3           #fileLogging:I
    :cond_0
    move v1, v6

    .line 125
    goto :goto_0

    .restart local v1       #debugLogging:I
    :cond_1
    move v2, v6

    .line 126
    goto :goto_1

    .restart local v2       #exchangeLogging:I
    :cond_2
    move v3, v6

    .line 127
    goto :goto_2
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 77
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 99
    :cond_0
    :goto_0
    invoke-static {p0}, Lcom/android/email/activity/Debug;->updateLoggingFlags(Landroid/content/Context;)V

    .line 100
    return-void

    .line 79
    :pswitch_0
    sput-boolean p2, Lcom/android/email/Email;->DEBUG:Z

    .line 80
    iget-object v0, p0, Lcom/android/email/activity/Debug;->mPreferences:Lcom/android/email/Preferences;

    sget-boolean v1, Lcom/android/email/Email;->DEBUG:Z

    invoke-virtual {v0, v1}, Lcom/android/email/Preferences;->setEnableDebugLogging(Z)V

    goto :goto_0

    .line 83
    :pswitch_1
    sput-boolean p2, Lcom/android/email/Email;->DEBUG_SENSITIVE:Z

    .line 84
    iget-object v0, p0, Lcom/android/email/activity/Debug;->mPreferences:Lcom/android/email/Preferences;

    sget-boolean v1, Lcom/android/email/Email;->DEBUG_SENSITIVE:Z

    invoke-virtual {v0, v1}, Lcom/android/email/Preferences;->setEnableSensitiveLogging(Z)V

    goto :goto_0

    .line 88
    :pswitch_2
    iget-object v0, p0, Lcom/android/email/activity/Debug;->mPreferences:Lcom/android/email/Preferences;

    invoke-virtual {v0, p2}, Lcom/android/email/Preferences;->setEnableExchangeLogging(Z)V

    goto :goto_0

    .line 91
    :pswitch_3
    iget-object v0, p0, Lcom/android/email/activity/Debug;->mPreferences:Lcom/android/email/Preferences;

    invoke-virtual {v0, p2}, Lcom/android/email/Preferences;->setEnableExchangeFileLogging(Z)V

    .line 92
    if-nez p2, :cond_0

    .line 93
    invoke-static {}, Lcom/android/exchange/utility/FileLogger;->close()V

    goto :goto_0

    .line 77
    :pswitch_data_0
    .packed-switch 0x7f07006c
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 47
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    const v0, 0x7f030012

    invoke-virtual {p0, v0}, Lcom/android/email/activity/Debug;->setContentView(I)V

    .line 51
    invoke-static {p0}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/Debug;->mPreferences:Lcom/android/email/Preferences;

    .line 53
    const v0, 0x7f07006b

    invoke-virtual {p0, v0}, Lcom/android/email/activity/Debug;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/Debug;->mVersionView:Landroid/widget/TextView;

    .line 54
    const v0, 0x7f07006c

    invoke-virtual {p0, v0}, Lcom/android/email/activity/Debug;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/email/activity/Debug;->mEnableDebugLoggingView:Landroid/widget/CheckBox;

    .line 55
    const v0, 0x7f07006d

    invoke-virtual {p0, v0}, Lcom/android/email/activity/Debug;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/email/activity/Debug;->mEnableSensitiveLoggingView:Landroid/widget/CheckBox;

    .line 57
    iget-object v0, p0, Lcom/android/email/activity/Debug;->mEnableDebugLoggingView:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 58
    iget-object v0, p0, Lcom/android/email/activity/Debug;->mEnableSensitiveLoggingView:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 60
    iget-object v0, p0, Lcom/android/email/activity/Debug;->mVersionView:Landroid/widget/TextView;

    const v1, 0x7f080044

    invoke-virtual {p0, v1}, Lcom/android/email/activity/Debug;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/high16 v4, 0x7f08

    invoke-virtual {p0, v4}, Lcom/android/email/activity/Debug;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object v0, p0, Lcom/android/email/activity/Debug;->mEnableDebugLoggingView:Landroid/widget/CheckBox;

    sget-boolean v1, Lcom/android/email/Email;->DEBUG:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 64
    iget-object v0, p0, Lcom/android/email/activity/Debug;->mEnableSensitiveLoggingView:Landroid/widget/CheckBox;

    sget-boolean v1, Lcom/android/email/Email;->DEBUG_SENSITIVE:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 67
    const v0, 0x7f07006e

    invoke-virtual {p0, v0}, Lcom/android/email/activity/Debug;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/email/activity/Debug;->mEnableExchangeLoggingView:Landroid/widget/CheckBox;

    .line 68
    const v0, 0x7f07006f

    invoke-virtual {p0, v0}, Lcom/android/email/activity/Debug;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/email/activity/Debug;->mEnableExchangeFileLoggingView:Landroid/widget/CheckBox;

    .line 69
    iget-object v0, p0, Lcom/android/email/activity/Debug;->mEnableExchangeLoggingView:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 70
    iget-object v0, p0, Lcom/android/email/activity/Debug;->mEnableExchangeFileLoggingView:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 71
    iget-object v0, p0, Lcom/android/email/activity/Debug;->mEnableExchangeLoggingView:Landroid/widget/CheckBox;

    sget-boolean v1, Lcom/android/exchange/Eas;->USER_LOG:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 72
    iget-object v0, p0, Lcom/android/email/activity/Debug;->mEnableExchangeFileLoggingView:Landroid/widget/CheckBox;

    sget-boolean v1, Lcom/android/exchange/Eas;->FILE_LOG:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 74
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 114
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 115
    invoke-virtual {p0}, Lcom/android/email/activity/Debug;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d0003

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 116
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 104
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 105
    .local v0, id:I
    const v1, 0x7f070121

    if-ne v0, v1, :cond_0

    .line 106
    invoke-static {p0}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/Preferences;->dump()V

    .line 107
    const/4 v1, 0x1

    .line 109
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method
