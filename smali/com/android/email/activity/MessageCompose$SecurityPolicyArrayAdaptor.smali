.class Lcom/android/email/activity/MessageCompose$SecurityPolicyArrayAdaptor;
.super Landroid/widget/ArrayAdapter;
.source "MessageCompose.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageCompose;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SecurityPolicyArrayAdaptor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageCompose;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/MessageCompose;Landroid/content/Context;ILjava/util/List;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "textViewResourceId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3618
    .local p4, items:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose$SecurityPolicyArrayAdaptor;->this$0:Lcom/android/email/activity/MessageCompose;

    .line 3619
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 3620
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/16 v9, 0x8

    .line 3626
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "11111 MessageCompose.java >>>>> SecurityPolicyArrayAdaptor()->getView  >>>>> 3502"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 3628
    move-object v6, p2

    .line 3629
    .local v6, v:Landroid/view/View;
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageCompose$SecurityPolicyArrayAdaptor;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3632
    .local v3, item:Ljava/lang/String;
    if-nez v6, :cond_0

    .line 3633
    iget-object v7, p0, Lcom/android/email/activity/MessageCompose$SecurityPolicyArrayAdaptor;->this$0:Lcom/android/email/activity/MessageCompose;

    const-string v8, "layout_inflater"

    invoke-virtual {v7, v8}, Lcom/android/email/activity/MessageCompose;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 3634
    .local v4, li:Landroid/view/LayoutInflater;
    const/high16 v7, 0x7f03

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 3638
    .end local v4           #li:Landroid/view/LayoutInflater;
    :cond_0
    if-eqz v3, :cond_2

    .line 3639
    const v7, 0x7f070004

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 3641
    const v7, 0x7f070007

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 3642
    .local v5, titleView:Landroid/widget/TextView;
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3644
    const v7, 0x7f070008

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3645
    .local v0, addressView:Landroid/widget/TextView;
    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3647
    const v7, 0x7f070005

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 3648
    .local v2, image:Landroid/view/View;
    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 3650
    const v7, 0x7f070006

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 3651
    .local v1, icon:Landroid/widget/ImageView;
    iget-object v7, p0, Lcom/android/email/activity/MessageCompose$SecurityPolicyArrayAdaptor;->this$0:Lcom/android/email/activity/MessageCompose;

    const v8, 0x7f08001a

    invoke-virtual {v7, v8}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 3654
    const v7, 0x7f020065

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    move-object v7, v6

    .line 3665
    .end local v0           #addressView:Landroid/widget/TextView;
    .end local v1           #icon:Landroid/widget/ImageView;
    .end local v2           #image:Landroid/view/View;
    .end local v5           #titleView:Landroid/widget/TextView;
    :goto_1
    return-object v7

    .line 3658
    .restart local v0       #addressView:Landroid/widget/TextView;
    .restart local v1       #icon:Landroid/widget/ImageView;
    .restart local v2       #image:Landroid/view/View;
    .restart local v5       #titleView:Landroid/widget/TextView;
    :cond_1
    const v7, 0x7f020096

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 3665
    .end local v0           #addressView:Landroid/widget/TextView;
    .end local v1           #icon:Landroid/widget/ImageView;
    .end local v2           #image:Landroid/view/View;
    .end local v5           #titleView:Landroid/widget/TextView;
    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    goto :goto_1
.end method
