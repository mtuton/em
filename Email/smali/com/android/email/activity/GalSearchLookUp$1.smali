.class Lcom/android/email/activity/GalSearchLookUp$1;
.super Ljava/lang/Object;
.source "GalSearchLookUp.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/GalSearchLookUp;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/GalSearchLookUp;


# direct methods
.method constructor <init>(Lcom/android/email/activity/GalSearchLookUp;)V
    .locals 0
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/email/activity/GalSearchLookUp$1;->this$0:Lcom/android/email/activity/GalSearchLookUp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 106
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p4, v0

    if-nez v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/android/email/activity/GalSearchLookUp$1;->this$0:Lcom/android/email/activity/GalSearchLookUp;

    invoke-virtual {v0}, Lcom/android/email/activity/GalSearchLookUp;->doGalSearch()V

    .line 112
    :goto_0
    return-void

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/GalSearchLookUp$1;->this$0:Lcom/android/email/activity/GalSearchLookUp;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/email/activity/GalSearchLookUp;->access$002(Lcom/android/email/activity/GalSearchLookUp;I)I

    goto :goto_0
.end method
