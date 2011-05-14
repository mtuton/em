.class Lcom/android/email/activity/AccountShortcutPicker$AccountsAdapter;
.super Landroid/widget/SimpleCursorAdapter;
.source "AccountShortcutPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/AccountShortcutPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AccountsAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/AccountShortcutPicker$AccountsAdapter$MyViewBinder;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V
    .locals 2
    .parameter "context"
    .parameter "layout"
    .parameter "c"
    .parameter "from"
    .parameter "to"

    .prologue
    .line 103
    invoke-direct/range {p0 .. p5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 104
    new-instance v0, Lcom/android/email/activity/AccountShortcutPicker$AccountsAdapter$MyViewBinder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/email/activity/AccountShortcutPicker$AccountsAdapter$MyViewBinder;-><init>(Lcom/android/email/activity/AccountShortcutPicker$1;)V

    invoke-virtual {p0, v0}, Lcom/android/email/activity/AccountShortcutPicker$AccountsAdapter;->setViewBinder(Landroid/widget/SimpleCursorAdapter$ViewBinder;)V

    .line 105
    return-void
.end method
