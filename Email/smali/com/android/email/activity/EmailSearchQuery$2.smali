.class Lcom/android/email/activity/EmailSearchQuery$2;
.super Ljava/lang/Object;
.source "EmailSearchQuery.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/EmailSearchQuery;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/EmailSearchQuery;


# direct methods
.method constructor <init>(Lcom/android/email/activity/EmailSearchQuery;)V
    .locals 0
    .parameter

    .prologue
    .line 258
    iput-object p1, p0, Lcom/android/email/activity/EmailSearchQuery$2;->this$0:Lcom/android/email/activity/EmailSearchQuery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/email/activity/EmailSearchQuery$2;->this$0:Lcom/android/email/activity/EmailSearchQuery;

    invoke-virtual {v0}, Lcom/android/email/activity/EmailSearchQuery;->finish()V

    .line 262
    return-void
.end method
