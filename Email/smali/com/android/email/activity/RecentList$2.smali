.class Lcom/android/email/activity/RecentList$2;
.super Ljava/lang/Object;
.source "RecentList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 298
    iput-object p1, p0, Lcom/android/email/activity/RecentList$2;->this$0:Lcom/android/email/activity/RecentList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 300
    iget-object v0, p0, Lcom/android/email/activity/RecentList$2;->this$0:Lcom/android/email/activity/RecentList;

    invoke-virtual {v0}, Lcom/android/email/activity/RecentList;->finish()V

    .line 301
    return-void
.end method
