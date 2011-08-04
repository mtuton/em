.class Lcom/android/email/activity/MessageView$DisplayViewAdapter;
.super Landroid/widget/ArrayAdapter;
.source "MessageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DisplayViewAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/MessageView$DisplayViewAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private inflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;[Lcom/android/email/activity/MessageView$DisplayViewType;)V
    .locals 1
    .parameter "context"
    .parameter "objects"

    .prologue
    .line 4603
    const v0, 0x7f030017

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 4604
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageView$DisplayViewAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 4605
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v4, 0x0

    .line 4612
    if-nez p2, :cond_0

    .line 4614
    iget-object v2, p0, Lcom/android/email/activity/MessageView$DisplayViewAdapter;->inflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030017

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 4616
    new-instance v0, Lcom/android/email/activity/MessageView$DisplayViewAdapter$ViewHolder;

    invoke-direct {v0}, Lcom/android/email/activity/MessageView$DisplayViewAdapter$ViewHolder;-><init>()V

    .line 4617
    .local v0, holder:Lcom/android/email/activity/MessageView$DisplayViewAdapter$ViewHolder;
    const v2, 0x7f07008b

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/android/email/activity/MessageView$DisplayViewAdapter$ViewHolder;->displayModeType:Landroid/widget/TextView;

    .line 4619
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 4625
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageView$DisplayViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/activity/MessageView$DisplayViewType;

    .line 4626
    .local v1, viewType:Lcom/android/email/activity/MessageView$DisplayViewType;
    if-nez v1, :cond_1

    .line 4627
    const-string v2, "View >>"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid category for position:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 4635
    :goto_1
    return-object p2

    .line 4622
    .end local v0           #holder:Lcom/android/email/activity/MessageView$DisplayViewAdapter$ViewHolder;
    .end local v1           #viewType:Lcom/android/email/activity/MessageView$DisplayViewType;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageView$DisplayViewAdapter$ViewHolder;

    .restart local v0       #holder:Lcom/android/email/activity/MessageView$DisplayViewAdapter$ViewHolder;
    goto :goto_0

    .line 4631
    .restart local v1       #viewType:Lcom/android/email/activity/MessageView$DisplayViewType;
    :cond_1
    iget-object v2, v0, Lcom/android/email/activity/MessageView$DisplayViewAdapter$ViewHolder;->displayModeType:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageView$DisplayViewType;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4632
    iget-object v2, v0, Lcom/android/email/activity/MessageView$DisplayViewAdapter$ViewHolder;->displayModeType:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageView$DisplayViewType;->getImg()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method
