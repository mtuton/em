.class Lcom/android/email/activity/MessageList$MailBoxAdapter;
.super Landroid/widget/ArrayAdapter;
.source "MessageList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MailBoxAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/MessageList$MailBoxAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final RESOURCE:I = 0x7f030024

.field private static final RESOURCE_SEPERATE:I = 0x7f030020


# instance fields
.field private inflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;[Lcom/android/email/activity/MessageList$MailBoxType;)V
    .locals 1
    .parameter "context"
    .parameter "objects"

    .prologue
    .line 3754
    const v0, 0x7f030024

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 3755
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageList$MailBoxAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 3756
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const-wide/16 v9, -0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 3761
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageList$MailBoxAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/email/activity/MessageList$MailBoxType;

    .line 3762
    .local v4, viewType:Lcom/android/email/activity/MessageList$MailBoxType;
    if-nez v4, :cond_0

    .line 3763
    const-string v5, "MessageList >>"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid category for position:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v8

    .line 3793
    .end local p0
    :goto_0
    return-object v5

    .line 3767
    .restart local p0
    :cond_0
    invoke-virtual {v4}, Lcom/android/email/activity/MessageList$MailBoxType;->getAccountKey()J

    move-result-wide v5

    cmp-long v5, v5, v9

    if-nez v5, :cond_1

    invoke-virtual {v4}, Lcom/android/email/activity/MessageList$MailBoxType;->getMailboxId()J

    move-result-wide v5

    cmp-long v5, v5, v9

    if-nez v5, :cond_1

    .line 3770
    iget-object v5, p0, Lcom/android/email/activity/MessageList$MailBoxAdapter;->inflater:Landroid/view/LayoutInflater;

    const v6, 0x7f030020

    invoke-virtual {v5, v6, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 3771
    .local v3, v:Landroid/view/View;
    move-object v0, v3

    check-cast v0, Landroid/widget/TextView;

    move-object v2, v0

    .line 3772
    .local v2, itemView:Landroid/widget/TextView;
    invoke-virtual {v4}, Lcom/android/email/activity/MessageList$MailBoxType;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3773
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setFocusable(Z)V

    move-object v5, v3

    .line 3774
    goto :goto_0

    .line 3778
    .end local v2           #itemView:Landroid/widget/TextView;
    .end local v3           #v:Landroid/view/View;
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_3

    .line 3780
    :cond_2
    iget-object v5, p0, Lcom/android/email/activity/MessageList$MailBoxAdapter;->inflater:Landroid/view/LayoutInflater;

    const v6, 0x7f030024

    invoke-virtual {v5, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 3782
    new-instance v1, Lcom/android/email/activity/MessageList$MailBoxAdapter$ViewHolder;

    invoke-direct {v1}, Lcom/android/email/activity/MessageList$MailBoxAdapter$ViewHolder;-><init>()V

    .line 3783
    .local v1, holder:Lcom/android/email/activity/MessageList$MailBoxAdapter$ViewHolder;
    const v5, 0x7f070096

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/TextView;

    iput-object p0, v1, Lcom/android/email/activity/MessageList$MailBoxAdapter$ViewHolder;->mailBoxName:Landroid/widget/TextView;

    .line 3785
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 3792
    :goto_1
    iget-object v5, v1, Lcom/android/email/activity/MessageList$MailBoxAdapter$ViewHolder;->mailBoxName:Landroid/widget/TextView;

    invoke-virtual {v4}, Lcom/android/email/activity/MessageList$MailBoxType;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v5, p2

    .line 3793
    goto :goto_0

    .line 3789
    .end local v1           #holder:Lcom/android/email/activity/MessageList$MailBoxAdapter$ViewHolder;
    .restart local p0
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/activity/MessageList$MailBoxAdapter$ViewHolder;

    .restart local v1       #holder:Lcom/android/email/activity/MessageList$MailBoxAdapter$ViewHolder;
    goto :goto_1
.end method

.method public isEnabled(I)Z
    .locals 7
    .parameter "position"

    .prologue
    const-wide/16 v5, -0x1

    const/4 v4, 0x0

    .line 3798
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageList$MailBoxAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageList$MailBoxType;

    .line 3799
    .local v0, viewType:Lcom/android/email/activity/MessageList$MailBoxType;
    if-nez v0, :cond_0

    .line 3800
    const-string v1, "MessageList >>"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid category for position:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v4

    .line 3808
    :goto_0
    return v1

    .line 3804
    :cond_0
    invoke-virtual {v0}, Lcom/android/email/activity/MessageList$MailBoxType;->getAccountKey()J

    move-result-wide v1

    cmp-long v1, v1, v5

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/android/email/activity/MessageList$MailBoxType;->getMailboxId()J

    move-result-wide v1

    cmp-long v1, v1, v5

    if-nez v1, :cond_1

    move v1, v4

    .line 3806
    goto :goto_0

    .line 3808
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method
