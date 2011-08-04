.class public Lcom/android/email/activity/PoliciesList;
.super Landroid/app/Activity;
.source "PoliciesList.java"


# static fields
.field private static final POLICIES_CONTENT_PROJECTION:[Ljava/lang/String;

.field private static account:Lcom/android/email/provider/EmailContent$Account;

.field private static policiesCursor:Landroid/database/Cursor;


# instance fields
.field final mActivePolicies:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mAddMsg:Landroid/widget/TextView;

.field mAddMsgEllipsized:Z

.field mAddMsgText:Ljava/lang/CharSequence;

.field mAdding:Z

.field final mAddingPolicies:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mAdminDescription:Landroid/widget/TextView;

.field mAdminIcon:Landroid/widget/ImageView;

.field mAdminName:Landroid/widget/TextView;

.field mAdminPolicies:Landroid/view/ViewGroup;

.field mAdminWarning:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 78
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "value"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "account_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/email/activity/PoliciesList;->POLICIES_CONTENT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/PoliciesList;->mAddMsgEllipsized:Z

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/PoliciesList;->mAddingPolicies:Ljava/util/ArrayList;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/PoliciesList;->mActivePolicies:Ljava/util/ArrayList;

    return-void
.end method

.method public static actionShowPolicyList(Landroid/content/Context;J)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 85
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/PoliciesList;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 86
    const-string v1, "accountId"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 87
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 88
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 89
    return-void
.end method

.method private static getPermissionItemView(Landroid/content/Context;Landroid/view/LayoutInflater;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZLandroid/graphics/drawable/Drawable;ZLjava/lang/String;)Landroid/view/View;
    .locals 7
    .parameter "context"
    .parameter "inflater"
    .parameter "grpName"
    .parameter "permList"
    .parameter "dangerous"
    .parameter "icon"
    .parameter "valueType"
    .parameter "value"

    .prologue
    .line 530
    const v5, 0x7f03000d

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 532
    .local v4, permView:Landroid/view/View;
    const v5, 0x7f07004d

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 533
    .local v2, permGrpView:Landroid/widget/TextView;
    const v5, 0x7f07004e

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 534
    .local v1, permDescView:Landroid/widget/TextView;
    const v5, 0x7f07004f

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 535
    .local v3, permValueView:Landroid/widget/TextView;
    if-eqz p6, :cond_2

    .line 537
    const-string v5, "true"

    invoke-virtual {p7, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 540
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0802f0

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 543
    :cond_0
    const-string v5, "false"

    invoke-virtual {p7, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 545
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0802ef

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 554
    :cond_1
    :goto_0
    const v5, 0x7f07004c

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 555
    .local v0, imgView:Landroid/widget/ImageView;
    invoke-virtual {v0, p5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 556
    if-eqz p2, :cond_3

    .line 557
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 558
    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 563
    :goto_1
    return-object v4

    .line 551
    .end local v0           #imgView:Landroid/widget/ImageView;
    :cond_2
    invoke-virtual {v3, p7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 560
    .restart local v0       #imgView:Landroid/widget/ImageView;
    :cond_3
    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 561
    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public static getPermissionItemView(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLjava/lang/String;)Landroid/view/View;
    .locals 8
    .parameter "context"
    .parameter "grpName"
    .parameter "description"
    .parameter "dangerous"
    .parameter "valueType"
    .parameter "value"

    .prologue
    const v2, 0x10801a5

    .line 507
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 511
    .local v1, inflater:Landroid/view/LayoutInflater;
    if-eqz p4, :cond_1

    .line 513
    const-string v0, "true"

    invoke-virtual {p5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 515
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .local v5, icon:Landroid/graphics/drawable/Drawable;
    :goto_0
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v6, p4

    move-object v7, p5

    .line 525
    invoke-static/range {v0 .. v7}, Lcom/android/email/activity/PoliciesList;->getPermissionItemView(Landroid/content/Context;Landroid/view/LayoutInflater;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZLandroid/graphics/drawable/Drawable;ZLjava/lang/String;)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 519
    .end local v5           #icon:Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x10801df

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .restart local v5       #icon:Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 523
    .end local v5           #icon:Landroid/graphics/drawable/Drawable;
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .restart local v5       #icon:Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method

.method static setViewVisibility(Ljava/util/ArrayList;I)V
    .locals 3
    .parameter
    .parameter "visibility"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 134
    .local p0, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 135
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 136
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 135
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 138
    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "icicle"

    .prologue
    const-wide/16 v2, -0x1

    .line 92
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 93
    invoke-virtual {p0}, Lcom/android/email/activity/PoliciesList;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "accountId"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 95
    .local v6, accountId:J
    cmp-long v0, v6, v2

    if-nez v0, :cond_1

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    invoke-static {p0, v6, v7}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v0

    sput-object v0, Lcom/android/email/activity/PoliciesList;->account:Lcom/android/email/provider/EmailContent$Account;

    .line 98
    sget-object v0, Lcom/android/email/activity/PoliciesList;->account:Lcom/android/email/provider/EmailContent$Account;

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {p0}, Lcom/android/email/activity/PoliciesList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/email/provider/EmailContent$Policies;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/email/activity/PoliciesList;->POLICIES_CONTENT_PROJECTION:[Ljava/lang/String;

    const-string v3, "account_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    sput-object v0, Lcom/android/email/activity/PoliciesList;->policiesCursor:Landroid/database/Cursor;

    .line 107
    const v0, 0x7f030016

    invoke-virtual {p0, v0}, Lcom/android/email/activity/PoliciesList;->setContentView(I)V

    .line 111
    const v0, 0x7f070084

    invoke-virtual {p0, v0}, Lcom/android/email/activity/PoliciesList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/email/activity/PoliciesList;->mAdminIcon:Landroid/widget/ImageView;

    .line 112
    const v0, 0x7f070085

    invoke-virtual {p0, v0}, Lcom/android/email/activity/PoliciesList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/PoliciesList;->mAdminName:Landroid/widget/TextView;

    .line 113
    const v0, 0x7f070086

    invoke-virtual {p0, v0}, Lcom/android/email/activity/PoliciesList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/PoliciesList;->mAdminDescription:Landroid/widget/TextView;

    .line 115
    const v0, 0x7f070088

    invoke-virtual {p0, v0}, Lcom/android/email/activity/PoliciesList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/PoliciesList;->mAddMsg:Landroid/widget/TextView;

    .line 119
    const v0, 0x7f070089

    invoke-virtual {p0, v0}, Lcom/android/email/activity/PoliciesList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/PoliciesList;->mAdminWarning:Landroid/widget/TextView;

    .line 120
    iget-object v0, p0, Lcom/android/email/activity/PoliciesList;->mAdminWarning:Landroid/widget/TextView;

    const v1, 0x7f0802a4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 121
    const v0, 0x7f07008a

    invoke-virtual {p0, v0}, Lcom/android/email/activity/PoliciesList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/email/activity/PoliciesList;->mAdminPolicies:Landroid/view/ViewGroup;

    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 127
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 128
    invoke-virtual {p0}, Lcom/android/email/activity/PoliciesList;->updateInterface()V

    .line 129
    return-void
.end method

.method updateInterface()V
    .locals 12

    .prologue
    const v11, 0x7f0802f0

    const/4 v9, 0x3

    const-string v10, "2"

    const-string v8, "1"

    const-string v7, "0"

    .line 141
    iget-object v0, p0, Lcom/android/email/activity/PoliciesList;->mAdminIcon:Landroid/widget/ImageView;

    const v4, 0x7f0200b2

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 143
    iget-object v0, p0, Lcom/android/email/activity/PoliciesList;->mAdminName:Landroid/widget/TextView;

    sget-object v4, Lcom/android/email/activity/PoliciesList;->account:Lcom/android/email/provider/EmailContent$Account;

    iget-object v4, v4, Lcom/android/email/provider/EmailContent$Account;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    iget-object v0, p0, Lcom/android/email/activity/PoliciesList;->mAdminDescription:Landroid/widget/TextView;

    sget-object v4, Lcom/android/email/activity/PoliciesList;->account:Lcom/android/email/provider/EmailContent$Account;

    iget-object v4, v4, Lcom/android/email/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    iget-object v0, p0, Lcom/android/email/activity/PoliciesList;->mAddMsgText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    .line 148
    iget-object v0, p0, Lcom/android/email/activity/PoliciesList;->mAddMsg:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/email/activity/PoliciesList;->mAddMsgText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    iget-object v0, p0, Lcom/android/email/activity/PoliciesList;->mAddMsg:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 154
    :goto_0
    sget-object v0, Lcom/android/email/activity/PoliciesList;->policiesCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_37

    .line 156
    :cond_0
    :goto_1
    sget-object v0, Lcom/android/email/activity/PoliciesList;->policiesCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 158
    const/4 v3, 0x1

    .line 159
    .local v3, itsBoolean:Z
    sget-object v0, Lcom/android/email/activity/PoliciesList;->policiesCursor:Landroid/database/Cursor;

    const/4 v4, 0x1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 160
    .local v1, policyName:Ljava/lang/String;
    const-string v2, ""

    .line 163
    .local v2, policyDescription:Ljava/lang/String;
    sget-object v0, Lcom/android/email/activity/PoliciesList;->policiesCursor:Landroid/database/Cursor;

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 164
    .local v5, policyValue:Ljava/lang/String;
    sget-object v0, Lcom/android/email/activity/PoliciesList;->policiesCursor:Landroid/database/Cursor;

    const/4 v4, 0x2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v4, "Integer"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 165
    const/4 v3, 0x0

    .line 168
    :cond_1
    const-string v0, "AllowCamera"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 170
    invoke-virtual {p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x10402ac

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_2
    :goto_2
    move-object v0, p0

    move v4, v3

    .line 484
    invoke-static/range {v0 .. v5}, Lcom/android/email/activity/PoliciesList;->getPermissionItemView(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLjava/lang/String;)Landroid/view/View;

    move-result-object v6

    .line 486
    .local v6, view:Landroid/view/View;
    iget-object v0, p0, Lcom/android/email/activity/PoliciesList;->mActivePolicies:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 487
    iget-object v0, p0, Lcom/android/email/activity/PoliciesList;->mAdminPolicies:Landroid/view/ViewGroup;

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 151
    .end local v1           #policyName:Ljava/lang/String;
    .end local v2           #policyDescription:Ljava/lang/String;
    .end local v3           #itsBoolean:Z
    .end local v5           #policyValue:Ljava/lang/String;
    .end local v6           #view:Landroid/view/View;
    :cond_3
    iget-object v0, p0, Lcom/android/email/activity/PoliciesList;->mAddMsg:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 173
    .restart local v1       #policyName:Ljava/lang/String;
    .restart local v2       #policyDescription:Ljava/lang/String;
    .restart local v3       #itsBoolean:Z
    .restart local v5       #policyValue:Ljava/lang/String;
    :cond_4
    const-string v0, "AllowTextMessaging"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 174
    invoke-virtual {p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x10402b0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 177
    :cond_5
    const-string v0, "AllowWifi"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 178
    invoke-virtual {p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x10402ae

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 182
    :cond_6
    const-string v0, "AllowBluetoothMode"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 184
    invoke-virtual {p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x10402bc

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 187
    const-string v0, "0"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 188
    const v0, 0x7f0802ef

    invoke-virtual {p0, v0}, Lcom/android/email/activity/PoliciesList;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 191
    :cond_7
    const-string v0, "1"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 192
    const v0, 0x7f0802f1

    invoke-virtual {p0, v0}, Lcom/android/email/activity/PoliciesList;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 194
    :cond_8
    const-string v0, "2"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 195
    invoke-virtual {p0, v11}, Lcom/android/email/activity/PoliciesList;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 200
    :cond_9
    const-string v0, "AllowInternetSharing"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 202
    invoke-virtual {p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x10402b8

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    .line 206
    :cond_a
    const-string v0, "AllowPOPIMAPEmail"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 208
    invoke-virtual {p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x10402b2

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    .line 211
    :cond_b
    const-string v0, "AllowBrowser"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 213
    invoke-virtual {p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x10402b6

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    .line 217
    :cond_c
    const-string v0, "AllowHTMLEmail"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 219
    invoke-virtual {p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x10402b4

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    .line 222
    :cond_d
    const-string v0, "AllowStorageCard"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 224
    invoke-virtual {p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x10402aa

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    .line 229
    :cond_e
    const-string v0, "AllowSMIMESoftCerts"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 230
    invoke-virtual {p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x10402d2

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    .line 234
    :cond_f
    const-string v0, "RequireManualSyncWhenRoaming"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 236
    invoke-virtual {p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x10402ba

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 238
    const-string v0, "0"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 239
    const v0, 0x7f0802ef

    invoke-virtual {p0, v0}, Lcom/android/email/activity/PoliciesList;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_2

    .line 242
    :cond_10
    const-string v0, "1"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 243
    invoke-virtual {p0, v11}, Lcom/android/email/activity/PoliciesList;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_2

    .line 247
    :cond_11
    const-string v0, "PasswordMode"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 249
    const-string v0, "0"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 254
    const-string v0, "0"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 255
    const v0, 0x7f0802ef

    invoke-virtual {p0, v0}, Lcom/android/email/activity/PoliciesList;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_2

    .line 258
    :cond_12
    const-string v0, "1"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 259
    invoke-virtual {p0, v11}, Lcom/android/email/activity/PoliciesList;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_2

    .line 261
    :cond_13
    const-string v0, "2"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 262
    invoke-virtual {p0, v11}, Lcom/android/email/activity/PoliciesList;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_2

    .line 265
    :cond_14
    const-string v0, "PasswordRecoveryEnabled"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 266
    invoke-virtual {p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x10402a0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    .line 269
    :cond_15
    const-string v0, "DevicePasswordExpiration"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 270
    invoke-virtual {p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x10402a2

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 272
    const-string v0, "0"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/email/activity/PoliciesList;->policiesCursor:Landroid/database/Cursor;

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v4, 0x7f0802f3

    invoke-virtual {p0, v4}, Lcom/android/email/activity/PoliciesList;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_2

    .line 281
    :cond_16
    const-string v0, "DevicePasswordHistory"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 282
    invoke-virtual {p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x10402a4

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 284
    const-string v0, "0"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_1

    .line 289
    :cond_17
    const-string v0, "MinPasswordComplexCharacters"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 291
    invoke-virtual {p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x10402be

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 293
    const-string v0, "0"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_1

    .line 297
    :cond_18
    const-string v0, "MaxDevicePasswordFailedAttempts"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 299
    invoke-virtual {p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x1040294

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 301
    const-string v0, "0"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_1

    .line 306
    :cond_19
    const-string v0, "MinDevicePasswordLength"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 307
    const-string v1, "MinDevicePasswordLength"

    .line 309
    const-string v0, "0"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_1

    .line 317
    :cond_1a
    const-string v0, "AttachmentsEnabled"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 318
    invoke-virtual {p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x10402a6

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    .line 322
    :cond_1b
    const-string v0, "MaxEmailBodyTruncationSize"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 323
    invoke-virtual {p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x10402c4

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 325
    const-string v0, "0"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/email/activity/PoliciesList;->policiesCursor:Landroid/database/Cursor;

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v4, 0x7f0802f2

    invoke-virtual {p0, v4}, Lcom/android/email/activity/PoliciesList;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_2

    .line 334
    :cond_1c
    const-string v0, "MaxEmailHtmlBodyTruncationSize"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 335
    invoke-virtual {p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x10402c6

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 337
    const-string v0, "0"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/email/activity/PoliciesList;->policiesCursor:Landroid/database/Cursor;

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v4, 0x7f0802f2

    invoke-virtual {p0, v4}, Lcom/android/email/activity/PoliciesList;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_2

    .line 345
    :cond_1d
    const-string v0, "MaxAttachmentSize"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 347
    invoke-virtual {p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x10402a8

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 349
    const-string v0, "0"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/email/activity/PoliciesList;->policiesCursor:Landroid/database/Cursor;

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v4, 0x7f0802f2

    invoke-virtual {p0, v4}, Lcom/android/email/activity/PoliciesList;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_2

    .line 359
    :cond_1e
    const-string v0, "RequireSignedSMIMEMessages"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 361
    invoke-virtual {p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x10402c8

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    .line 367
    :cond_1f
    const-string v0, "AllowSMIMEEncryptionAlgorithmNegotiation"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 369
    invoke-virtual {p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x10402d1

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 371
    const-string v0, "0"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 373
    const-string v0, "1"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 374
    invoke-virtual {p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0802f4

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_2

    .line 376
    :cond_20
    const-string v0, "2"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 377
    invoke-virtual {p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0802f5

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_2

    .line 378
    :cond_21
    const-string v0, "3"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 379
    invoke-virtual {p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0802f6

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_2

    .line 386
    :cond_22
    const-string v0, "RequireEncryptedSMIMEMessages"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 388
    invoke-virtual {p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x10402ca

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    .line 392
    :cond_23
    const-string v0, "RemoteWipe"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 397
    const-string v0, "AllowDesktopSync"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 402
    const-string v0, "AllowIrDA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 407
    const-string v0, "MaxInactivityTime"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 409
    const-string v0, "0"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_1

    .line 416
    :cond_24
    const-string v0, "RequireSignedSMIMEAlgorithm"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 418
    invoke-virtual {p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0802e5

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 420
    const-string v0, "0"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 421
    invoke-virtual {p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0802ba

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_2

    .line 422
    :cond_25
    const-string v0, "1"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 423
    invoke-virtual {p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0802bb

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_2

    .line 426
    :cond_26
    const-string v0, "RequireEncryptionSMIMEAlgorithm"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 428
    invoke-virtual {p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0802e6

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 430
    const-string v0, "0"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 431
    invoke-virtual {p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0802bc

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_2

    .line 432
    :cond_27
    const-string v0, "1"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 433
    invoke-virtual {p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0802bd

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_2

    .line 435
    :cond_28
    const-string v0, "2"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 436
    invoke-virtual {p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0802be

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_2

    .line 437
    :cond_29
    const-string v0, "3"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 438
    invoke-virtual {p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0802bf

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_2

    .line 440
    :cond_2a
    const-string v0, "4"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 441
    invoke-virtual {p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0802c0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_2

    .line 447
    :cond_2b
    const-string v0, "MaxEmailAgeFilter"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 448
    invoke-virtual {p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x10402c2

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 450
    const-string v0, "0"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 451
    invoke-virtual {p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f080082

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_2

    .line 452
    :cond_2c
    const-string v0, "1"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 453
    invoke-virtual {p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0800cb

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_2

    .line 454
    :cond_2d
    const-string v0, "2"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 455
    invoke-virtual {p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0800cc

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_2

    .line 456
    :cond_2e
    const-string v0, "3"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 457
    invoke-virtual {p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0800cd

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_2

    .line 458
    :cond_2f
    const-string v0, "4"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 459
    invoke-virtual {p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0800ce

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_2

    .line 460
    :cond_30
    const-string v0, "5"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 461
    invoke-virtual {p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0800cf

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_2

    .line 466
    :cond_31
    const-string v0, "MaxCalendarAgeFilter"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 468
    const-string v0, "0"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 469
    invoke-virtual {p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f080082

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 480
    :cond_32
    :goto_3
    invoke-virtual {p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x10402c0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    .line 470
    :cond_33
    const-string v0, "4"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 471
    invoke-virtual {p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0800ce

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    .line 472
    :cond_34
    const-string v0, "5"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 473
    invoke-virtual {p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0800cf

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    .line 474
    :cond_35
    const-string v0, "6"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 475
    invoke-virtual {p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f08026d

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    .line 476
    :cond_36
    const-string v0, "7"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 477
    invoke-virtual {p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f08026e

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    .line 490
    .end local v1           #policyName:Ljava/lang/String;
    .end local v2           #policyDescription:Ljava/lang/String;
    .end local v3           #itsBoolean:Z
    .end local v5           #policyValue:Ljava/lang/String;
    :cond_37
    iget-object v0, p0, Lcom/android/email/activity/PoliciesList;->mActivePolicies:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-static {v0, v4}, Lcom/android/email/activity/PoliciesList;->setViewVisibility(Ljava/util/ArrayList;I)V

    .line 491
    iget-object v0, p0, Lcom/android/email/activity/PoliciesList;->mAddingPolicies:Ljava/util/ArrayList;

    const/16 v4, 0x8

    invoke-static {v0, v4}, Lcom/android/email/activity/PoliciesList;->setViewVisibility(Ljava/util/ArrayList;I)V

    .line 495
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/PoliciesList;->mAdding:Z

    .line 497
    return-void
.end method
