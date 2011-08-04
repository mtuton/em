.class Lcom/android/email/activity/RecentList$1;
.super Ljava/lang/Object;
.source "RecentList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/RecentList;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/RecentList;


# direct methods
.method constructor <init>(Lcom/android/email/activity/RecentList;)V
    .locals 0
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/email/activity/RecentList$1;->this$0:Lcom/android/email/activity/RecentList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/email/activity/RecentList$1;->this$0:Lcom/android/email/activity/RecentList;

    invoke-virtual {v0}, Lcom/android/email/activity/RecentList;->finish()V

    .line 97
    return-void
.end method
