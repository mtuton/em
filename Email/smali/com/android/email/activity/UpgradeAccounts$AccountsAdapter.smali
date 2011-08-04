.class Lcom/android/email/activity/UpgradeAccounts$AccountsAdapter;
.super Landroid/widget/BaseAdapter;
.source "UpgradeAccounts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/UpgradeAccounts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AccountsAdapter"
.end annotation


# instance fields
.field final mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/email/activity/UpgradeAccounts;


# direct methods
.method constructor <init>(Lcom/android/email/activity/UpgradeAccounts;)V
    .locals 1
    .parameter

    .prologue
    .line 209
    iput-object p1, p0, Lcom/android/email/activity/UpgradeAccounts$AccountsAdapter;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 210
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Lcom/android/email/activity/UpgradeAccounts;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/email/activity/UpgradeAccounts$AccountsAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 211
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;I)V
    .locals 6
    .parameter "view"
    .parameter "position"

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 252
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/activity/UpgradeAccounts$ViewHolder;

    .line 253
    .local v1, vh:Lcom/android/email/activity/UpgradeAccounts$ViewHolder;
    iget-object v2, p0, Lcom/android/email/activity/UpgradeAccounts$AccountsAdapter;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    invoke-static {v2}, Lcom/android/email/activity/UpgradeAccounts;->access$000(Lcom/android/email/activity/UpgradeAccounts;)[Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    move-result-object v2

    aget-object v0, v2, p2

    .line 254
    .local v0, ai:Lcom/android/email/activity/UpgradeAccounts$AccountInfo;
    iget-object v2, v1, Lcom/android/email/activity/UpgradeAccounts$ViewHolder;->displayName:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    invoke-virtual {v3}, Lcom/android/email/Account;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 255
    iget-object v2, v0, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->errorMessage:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 256
    iget-object v2, v1, Lcom/android/email/activity/UpgradeAccounts$ViewHolder;->errorReport:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 257
    iget-object v2, v1, Lcom/android/email/activity/UpgradeAccounts$ViewHolder;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 258
    iget-object v2, v1, Lcom/android/email/activity/UpgradeAccounts$ViewHolder;->progress:Landroid/widget/ProgressBar;

    iget v3, v0, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->maxProgress:I

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 259
    iget-object v2, v1, Lcom/android/email/activity/UpgradeAccounts$ViewHolder;->progress:Landroid/widget/ProgressBar;

    iget v3, v0, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->progress:I

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 265
    :goto_0
    return-void

    .line 261
    :cond_0
    iget-object v2, v1, Lcom/android/email/activity/UpgradeAccounts$ViewHolder;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 262
    iget-object v2, v1, Lcom/android/email/activity/UpgradeAccounts$ViewHolder;->errorReport:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 263
    iget-object v2, v1, Lcom/android/email/activity/UpgradeAccounts$ViewHolder;->errorReport:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->errorMessage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/email/activity/UpgradeAccounts$AccountsAdapter;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    invoke-static {v0}, Lcom/android/email/activity/UpgradeAccounts;->access$000(Lcom/android/email/activity/UpgradeAccounts;)[Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/email/activity/UpgradeAccounts$AccountsAdapter;->this$0:Lcom/android/email/activity/UpgradeAccounts;

    invoke-static {v0}, Lcom/android/email/activity/UpgradeAccounts;->access$000(Lcom/android/email/activity/UpgradeAccounts;)[Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 227
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 232
    if-nez p2, :cond_0

    .line 233
    invoke-virtual {p0, p3}, Lcom/android/email/activity/UpgradeAccounts$AccountsAdapter;->newView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 237
    .local v0, v:Landroid/view/View;
    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/android/email/activity/UpgradeAccounts$AccountsAdapter;->bindView(Landroid/view/View;I)V

    .line 238
    return-object v0

    .line 235
    .end local v0           #v:Landroid/view/View;
    :cond_0
    move-object v0, p2

    .restart local v0       #v:Landroid/view/View;
    goto :goto_0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 215
    const/4 v0, 0x1

    return v0
.end method

.method public newView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "parent"

    .prologue
    .line 242
    iget-object v2, p0, Lcom/android/email/activity/UpgradeAccounts$AccountsAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030051

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 243
    .local v1, v:Landroid/view/View;
    new-instance v0, Lcom/android/email/activity/UpgradeAccounts$ViewHolder;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/android/email/activity/UpgradeAccounts$ViewHolder;-><init>(Lcom/android/email/activity/UpgradeAccounts$1;)V

    .line 244
    .local v0, h:Lcom/android/email/activity/UpgradeAccounts$ViewHolder;
    const v2, 0x7f07000f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/TextView;

    iput-object p0, v0, Lcom/android/email/activity/UpgradeAccounts$ViewHolder;->displayName:Landroid/widget/TextView;

    .line 245
    const v2, 0x7f070024

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ProgressBar;

    iput-object p0, v0, Lcom/android/email/activity/UpgradeAccounts$ViewHolder;->progress:Landroid/widget/ProgressBar;

    .line 246
    const v2, 0x7f070161

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    iput-object p0, v0, Lcom/android/email/activity/UpgradeAccounts$ViewHolder;->errorReport:Landroid/widget/TextView;

    .line 247
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 248
    return-object v1
.end method
