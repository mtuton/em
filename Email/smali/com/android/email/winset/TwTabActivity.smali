.class public Lcom/android/email/winset/TwTabActivity;
.super Landroid/app/ActivityGroup;
.source "TwTabActivity.java"


# instance fields
.field private mDefaultTab:Ljava/lang/String;

.field private mDefaultTabIndex:I

.field private mTabHost:Lcom/android/email/winset/TwTabHost;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/app/ActivityGroup;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/winset/TwTabActivity;->mDefaultTab:Ljava/lang/String;

    .line 59
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/email/winset/TwTabActivity;->mDefaultTabIndex:I

    .line 65
    return-void
.end method

.method private ensureTwTabHost()V
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/email/winset/TwTabActivity;->mTabHost:Lcom/android/email/winset/TwTabHost;

    if-nez v0, :cond_0

    .line 145
    const v0, 0x2030008

    invoke-virtual {p0, v0}, Lcom/android/email/winset/TwTabActivity;->setContentView(I)V

    .line 147
    :cond_0
    return-void
.end method


# virtual methods
.method public getTabHost()Lcom/android/email/winset/TwTabHost;
    .locals 1

    .prologue
    .line 167
    invoke-direct {p0}, Lcom/android/email/winset/TwTabActivity;->ensureTwTabHost()V

    .line 168
    iget-object v0, p0, Lcom/android/email/winset/TwTabActivity;->mTabHost:Lcom/android/email/winset/TwTabHost;

    return-object v0
.end method

.method protected onChildTitleChanged(Landroid/app/Activity;Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "childActivity"
    .parameter "title"

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/android/email/winset/TwTabActivity;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/LocalActivityManager;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 154
    iget-object v1, p0, Lcom/android/email/winset/TwTabActivity;->mTabHost:Lcom/android/email/winset/TwTabHost;

    invoke-virtual {v1}, Lcom/android/email/winset/TwTabHost;->getCurrentTabView()Landroid/view/View;

    move-result-object v0

    .line 155
    .local v0, tabView:Landroid/view/View;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 156
    check-cast v0, Landroid/widget/TextView;

    .end local v0           #tabView:Landroid/view/View;
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    :cond_0
    return-void
.end method

.method public onContentChanged()V
    .locals 2

    .prologue
    .line 132
    invoke-super {p0}, Landroid/app/ActivityGroup;->onContentChanged()V

    .line 133
    const v0, 0x1020012

    invoke-virtual {p0, v0}, Lcom/android/email/winset/TwTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/email/winset/TwTabHost;

    iput-object v0, p0, Lcom/android/email/winset/TwTabActivity;->mTabHost:Lcom/android/email/winset/TwTabHost;

    .line 135
    iget-object v0, p0, Lcom/android/email/winset/TwTabActivity;->mTabHost:Lcom/android/email/winset/TwTabHost;

    if-nez v0, :cond_0

    .line 136
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Your content must have a TwTabHost whose id attribute is \'android.R.id.TwTabHost\'"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/android/email/winset/TwTabActivity;->mTabHost:Lcom/android/email/winset/TwTabHost;

    invoke-virtual {p0}, Lcom/android/email/winset/TwTabActivity;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/email/winset/TwTabHost;->setup(Landroid/app/LocalActivityManager;)V

    .line 141
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 106
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onPostCreate(Landroid/os/Bundle;)V

    .line 108
    invoke-direct {p0}, Lcom/android/email/winset/TwTabActivity;->ensureTwTabHost()V

    .line 110
    iget-object v0, p0, Lcom/android/email/winset/TwTabActivity;->mTabHost:Lcom/android/email/winset/TwTabHost;

    invoke-virtual {v0}, Lcom/android/email/winset/TwTabHost;->getCurrentTab()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 111
    iget-object v0, p0, Lcom/android/email/winset/TwTabActivity;->mTabHost:Lcom/android/email/winset/TwTabHost;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/email/winset/TwTabHost;->setCurrentTab(I)V

    .line 113
    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 89
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 90
    invoke-direct {p0}, Lcom/android/email/winset/TwTabActivity;->ensureTwTabHost()V

    .line 91
    const-string v1, "currentTab"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, cur:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 93
    iget-object v1, p0, Lcom/android/email/winset/TwTabActivity;->mTabHost:Lcom/android/email/winset/TwTabHost;

    invoke-virtual {v1, v0}, Lcom/android/email/winset/TwTabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 95
    :cond_0
    iget-object v1, p0, Lcom/android/email/winset/TwTabActivity;->mTabHost:Lcom/android/email/winset/TwTabHost;

    invoke-virtual {v1}, Lcom/android/email/winset/TwTabHost;->getCurrentTab()I

    move-result v1

    if-gez v1, :cond_1

    .line 96
    iget-object v1, p0, Lcom/android/email/winset/TwTabActivity;->mDefaultTab:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 97
    iget-object v1, p0, Lcom/android/email/winset/TwTabActivity;->mTabHost:Lcom/android/email/winset/TwTabHost;

    iget-object v2, p0, Lcom/android/email/winset/TwTabActivity;->mDefaultTab:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/email/winset/TwTabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 102
    :cond_1
    :goto_0
    return-void

    .line 98
    :cond_2
    iget v1, p0, Lcom/android/email/winset/TwTabActivity;->mDefaultTabIndex:I

    if-ltz v1, :cond_1

    .line 99
    iget-object v1, p0, Lcom/android/email/winset/TwTabActivity;->mTabHost:Lcom/android/email/winset/TwTabHost;

    iget v2, p0, Lcom/android/email/winset/TwTabActivity;->mDefaultTabIndex:I

    invoke-virtual {v1, v2}, Lcom/android/email/winset/TwTabHost;->setCurrentTab(I)V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 117
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 118
    iget-object v1, p0, Lcom/android/email/winset/TwTabActivity;->mTabHost:Lcom/android/email/winset/TwTabHost;

    invoke-virtual {v1}, Lcom/android/email/winset/TwTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, currentTabTag:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 120
    const-string v1, "currentTab"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    :cond_0
    return-void
.end method
