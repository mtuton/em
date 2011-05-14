.class interface abstract Lcom/android/email/activity/MessageList$MultiToggleHelper;
.super Ljava/lang/Object;
.source "MessageList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "MultiToggleHelper"
.end annotation


# virtual methods
.method public abstract getField(JLandroid/database/Cursor;)Z
.end method

.method public abstract getFlagField(JLandroid/database/Cursor;)I
.end method

.method public abstract setField(JLandroid/database/Cursor;Z)Z
.end method

.method public abstract setFlagField(JLandroid/database/Cursor;I)Z
.end method
