.class Lcom/android/email/activity/MessageList$18;
.super Ljava/lang/Object;
.source "MessageList.java"

# interfaces
.implements Lcom/android/email/activity/MessageList$MultiToggleHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageList;->onMultiToggleFavorite(Ljava/util/Set;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageList;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageList;)V
    .locals 0
    .parameter

    .prologue
    .line 3274
    iput-object p1, p0, Lcom/android/email/activity/MessageList$18;->this$0:Lcom/android/email/activity/MessageList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getField(JLandroid/database/Cursor;)Z
    .locals 3
    .parameter "messageId"
    .parameter "c"

    .prologue
    .line 3252
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>>>>>>>>>>  getField Cursor >>>>>>>>>>>>>>>>>>>>>>>>> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">>>>>>>>><<<<<<<<<<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 3253
    const/4 v0, 0x7

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFlagField(JLandroid/database/Cursor;)I
    .locals 3
    .parameter "messageId"
    .parameter "c"

    .prologue
    .line 3257
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>>>>>>>>>>  getFlagField Cursor >>>>>>>>>>>>>>>>>>>>>>>>> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">>>>>>>>><<<<<<<<<<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 3258
    const/4 v0, -0x1

    return v0
.end method

.method public setField(JLandroid/database/Cursor;Z)Z
    .locals 2
    .parameter "messageId"
    .parameter "c"
    .parameter "newValue"

    .prologue
    .line 3262
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/email/activity/MessageList$18;->getField(JLandroid/database/Cursor;)Z

    move-result v0

    .line 3263
    .local v0, oldValue:Z
    if-eq v0, p4, :cond_0

    .line 3264
    iget-object v1, p0, Lcom/android/email/activity/MessageList$18;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v1, p1, p2, p4}, Lcom/android/email/activity/MessageList;->access$3300(Lcom/android/email/activity/MessageList;JZ)V

    .line 3265
    const/4 v1, 0x1

    .line 3267
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setFlagField(JLandroid/database/Cursor;I)Z
    .locals 3
    .parameter "messageId"
    .parameter "c"
    .parameter "newValue"

    .prologue
    .line 3272
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>>>>>>>>>>  setFlagField newValue >>>>>>>>>>>>>>>>>>>>>>> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<<<<<<<<<<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 3273
    const/4 v0, 0x0

    return v0
.end method
