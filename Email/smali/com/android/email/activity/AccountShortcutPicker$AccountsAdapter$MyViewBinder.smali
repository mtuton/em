.class Lcom/android/email/activity/AccountShortcutPicker$AccountsAdapter$MyViewBinder;
.super Ljava/lang/Object;
.source "AccountShortcutPicker.java"

# interfaces
.implements Landroid/widget/SimpleCursorAdapter$ViewBinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/AccountShortcutPicker$AccountsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyViewBinder"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/AccountShortcutPicker$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/android/email/activity/AccountShortcutPicker$AccountsAdapter$MyViewBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public setViewValue(Landroid/view/View;Landroid/database/Cursor;I)Z
    .locals 3
    .parameter "view"
    .parameter "cursor"
    .parameter "columnIndex"

    .prologue
    .line 114
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f07004b

    if-ne v1, v2, :cond_1

    .line 116
    const/4 v0, 0x0

    .line 117
    .local v0, unreadMessageCount:I
    if-gtz v0, :cond_0

    .line 118
    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 122
    .end local p1
    :goto_0
    const/4 v1, 0x1

    .line 125
    .end local v0           #unreadMessageCount:I
    :goto_1
    return v1

    .line 120
    .restart local v0       #unreadMessageCount:I
    .restart local p1
    :cond_0
    check-cast p1, Landroid/widget/TextView;

    .end local p1
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 125
    .end local v0           #unreadMessageCount:I
    .restart local p1
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method
