.class Lcom/android/email/activity/MessageView$ReceiverListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "MessageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ReceiverListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/MessageView$ReceiverListAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final RESOURCE:I = 0x7f030033

.field private static final RESOURCE_SEPERATE:I = 0x7f030020


# instance fields
.field private inflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;[Lcom/android/email/activity/MessageView$ReceiverViewType;)V
    .locals 1
    .parameter "context"
    .parameter "objects"

    .prologue
    .line 2065
    const v0, 0x7f030033

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 2066
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageView$ReceiverListAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 2067
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 2072
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageView$ReceiverListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/email/activity/MessageView$ReceiverViewType;

    .line 2074
    .local v5, viewType:Lcom/android/email/activity/MessageView$ReceiverViewType;
    if-nez v5, :cond_0

    .line 2075
    const-string v6, "View >>"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid category for position:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v9

    .line 2106
    .end local p0
    :goto_0
    return-object v6

    .line 2079
    .restart local p0
    :cond_0
    invoke-virtual {v5}, Lcom/android/email/activity/MessageView$ReceiverViewType;->getReceiverGroup()Ljava/lang/String;

    move-result-object v1

    .line 2081
    .local v1, groupName:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 2084
    iget-object v6, p0, Lcom/android/email/activity/MessageView$ReceiverListAdapter;->inflater:Landroid/view/LayoutInflater;

    const v7, 0x7f030020

    invoke-virtual {v6, v7, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 2085
    .local v4, v:Landroid/view/View;
    move-object v0, v4

    check-cast v0, Landroid/widget/TextView;

    move-object v3, v0

    .line 2086
    .local v3, itemView:Landroid/widget/TextView;
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2087
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setFocusable(Z)V

    move-object v6, v4

    .line 2088
    goto :goto_0

    .line 2092
    .end local v3           #itemView:Landroid/widget/TextView;
    .end local v4           #v:Landroid/view/View;
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_3

    .line 2094
    :cond_2
    iget-object v6, p0, Lcom/android/email/activity/MessageView$ReceiverListAdapter;->inflater:Landroid/view/LayoutInflater;

    const v7, 0x7f030033

    invoke-virtual {v6, v7, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 2096
    new-instance v2, Lcom/android/email/activity/MessageView$ReceiverListAdapter$ViewHolder;

    invoke-direct {v2}, Lcom/android/email/activity/MessageView$ReceiverListAdapter$ViewHolder;-><init>()V

    .line 2097
    .local v2, holder:Lcom/android/email/activity/MessageView$ReceiverListAdapter$ViewHolder;
    const v6, 0x7f070108

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/TextView;

    iput-object p0, v2, Lcom/android/email/activity/MessageView$ReceiverListAdapter$ViewHolder;->receiverName:Landroid/widget/TextView;

    .line 2098
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2105
    :goto_1
    iget-object v6, v2, Lcom/android/email/activity/MessageView$ReceiverListAdapter$ViewHolder;->receiverName:Landroid/widget/TextView;

    invoke-virtual {v5}, Lcom/android/email/activity/MessageView$ReceiverViewType;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v6, p2

    .line 2106
    goto :goto_0

    .line 2102
    .end local v2           #holder:Lcom/android/email/activity/MessageView$ReceiverListAdapter$ViewHolder;
    .restart local p0
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/activity/MessageView$ReceiverListAdapter$ViewHolder;

    .restart local v2       #holder:Lcom/android/email/activity/MessageView$ReceiverListAdapter$ViewHolder;
    goto :goto_1
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 2112
    const/4 v0, 0x0

    return v0
.end method
