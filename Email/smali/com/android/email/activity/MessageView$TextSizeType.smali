.class Lcom/android/email/activity/MessageView$TextSizeType;
.super Ljava/lang/Object;
.source "MessageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TextSizeType"
.end annotation


# instance fields
.field private _name:Ljava/lang/String;

.field private _sampleSize:I


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4717
    iget-object v0, p0, Lcom/android/email/activity/MessageView$TextSizeType;->_name:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 4720
    iget v0, p0, Lcom/android/email/activity/MessageView$TextSizeType;->_sampleSize:I

    return v0
.end method
