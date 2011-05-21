.class Lcom/android/exchange/provider/GalEmailAddressAdapter$1$1;
.super Ljava/lang/Object;
.source "GalEmailAddressAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exchange/provider/GalEmailAddressAdapter$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/exchange/provider/GalEmailAddressAdapter$1;

.field final synthetic val$galCursor:Landroid/database/Cursor;


# direct methods
.method constructor <init>(Lcom/android/exchange/provider/GalEmailAddressAdapter$1;Landroid/database/Cursor;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 155
    iput-object p1, p0, Lcom/android/exchange/provider/GalEmailAddressAdapter$1$1;->this$1:Lcom/android/exchange/provider/GalEmailAddressAdapter$1;

    iput-object p2, p0, Lcom/android/exchange/provider/GalEmailAddressAdapter$1$1;->val$galCursor:Landroid/database/Cursor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v2, -0x1

    .line 157
    iget-object v1, p0, Lcom/android/exchange/provider/GalEmailAddressAdapter$1$1;->this$1:Lcom/android/exchange/provider/GalEmailAddressAdapter$1;

    iget-object v1, v1, Lcom/android/exchange/provider/GalEmailAddressAdapter$1;->val$mergedResultCursor:Lcom/android/exchange/provider/GalEmailAddressAdapter$MyMergeCursor;

    invoke-virtual {v1}, Lcom/android/exchange/provider/GalEmailAddressAdapter$MyMergeCursor;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 193
    :goto_0
    return-void

    .line 165
    :cond_0
    iget-object v1, p0, Lcom/android/exchange/provider/GalEmailAddressAdapter$1$1;->val$galCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/exchange/provider/GalEmailAddressAdapter$1$1;->val$galCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 169
    :cond_1
    iget-object v1, p0, Lcom/android/exchange/provider/GalEmailAddressAdapter$1$1;->this$1:Lcom/android/exchange/provider/GalEmailAddressAdapter$1;

    iget-object v1, v1, Lcom/android/exchange/provider/GalEmailAddressAdapter$1;->val$mergedResultCursor:Lcom/android/exchange/provider/GalEmailAddressAdapter$MyMergeCursor;

    invoke-virtual {v1, v2}, Lcom/android/exchange/provider/GalEmailAddressAdapter$MyMergeCursor;->setSeparatorPosition(I)V

    .line 170
    iget-object v1, p0, Lcom/android/exchange/provider/GalEmailAddressAdapter$1$1;->this$1:Lcom/android/exchange/provider/GalEmailAddressAdapter$1;

    iget-object v1, v1, Lcom/android/exchange/provider/GalEmailAddressAdapter$1;->this$0:Lcom/android/exchange/provider/GalEmailAddressAdapter;

    invoke-virtual {v1}, Lcom/android/exchange/provider/GalEmailAddressAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 175
    :cond_2
    iget-object v1, p0, Lcom/android/exchange/provider/GalEmailAddressAdapter$1$1;->val$galCursor:Landroid/database/Cursor;

    invoke-interface {v1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 176
    :goto_1
    iget-object v1, p0, Lcom/android/exchange/provider/GalEmailAddressAdapter$1$1;->val$galCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 177
    iget-object v1, p0, Lcom/android/exchange/provider/GalEmailAddressAdapter$1$1;->this$1:Lcom/android/exchange/provider/GalEmailAddressAdapter$1;

    iget-object v1, v1, Lcom/android/exchange/provider/GalEmailAddressAdapter$1;->val$matrixCursor:Landroid/database/MatrixCursor;

    invoke-virtual {v1}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v0

    .line 178
    .local v0, rb:Landroid/database/MatrixCursor$RowBuilder;
    iget-object v1, p0, Lcom/android/exchange/provider/GalEmailAddressAdapter$1$1;->val$galCursor:Landroid/database/Cursor;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 179
    iget-object v1, p0, Lcom/android/exchange/provider/GalEmailAddressAdapter$1$1;->val$galCursor:Landroid/database/Cursor;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 181
    iget-object v1, p0, Lcom/android/exchange/provider/GalEmailAddressAdapter$1$1;->val$galCursor:Landroid/database/Cursor;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto :goto_1

    .line 185
    .end local v0           #rb:Landroid/database/MatrixCursor$RowBuilder;
    :cond_3
    iget-object v1, p0, Lcom/android/exchange/provider/GalEmailAddressAdapter$1$1;->this$1:Lcom/android/exchange/provider/GalEmailAddressAdapter$1;

    iget-object v1, v1, Lcom/android/exchange/provider/GalEmailAddressAdapter$1;->this$0:Lcom/android/exchange/provider/GalEmailAddressAdapter;

    iget-object v2, p0, Lcom/android/exchange/provider/GalEmailAddressAdapter$1$1;->val$galCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/exchange/provider/GalEmailAddressAdapter;->access$202(Lcom/android/exchange/provider/GalEmailAddressAdapter;I)I

    .line 186
    iget-object v1, p0, Lcom/android/exchange/provider/GalEmailAddressAdapter$1$1;->this$1:Lcom/android/exchange/provider/GalEmailAddressAdapter$1;

    iget-object v1, v1, Lcom/android/exchange/provider/GalEmailAddressAdapter$1;->this$0:Lcom/android/exchange/provider/GalEmailAddressAdapter;

    iget-object v2, p0, Lcom/android/exchange/provider/GalEmailAddressAdapter$1$1;->val$galCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "com.android.exchange.provider.TOTAL_RESULTS"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/exchange/provider/GalEmailAddressAdapter;->access$302(Lcom/android/exchange/provider/GalEmailAddressAdapter;I)I

    .line 192
    iget-object v1, p0, Lcom/android/exchange/provider/GalEmailAddressAdapter$1$1;->this$1:Lcom/android/exchange/provider/GalEmailAddressAdapter$1;

    iget-object v1, v1, Lcom/android/exchange/provider/GalEmailAddressAdapter$1;->this$0:Lcom/android/exchange/provider/GalEmailAddressAdapter;

    invoke-virtual {v1}, Lcom/android/exchange/provider/GalEmailAddressAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method
