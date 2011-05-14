.class public interface abstract Lcom/android/email/mail/Folder$MessageUpdateCallbacks;
.super Ljava/lang/Object;
.source "Folder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/mail/Folder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MessageUpdateCallbacks"
.end annotation


# virtual methods
.method public abstract onMessageNotFound(Lcom/android/email/mail/Message;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract onMessageUidChange(Lcom/android/email/mail/Message;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation
.end method
