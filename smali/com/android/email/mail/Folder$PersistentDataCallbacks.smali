.class public interface abstract Lcom/android/email/mail/Folder$PersistentDataCallbacks;
.super Ljava/lang/Object;
.source "Folder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/mail/Folder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PersistentDataCallbacks"
.end annotation


# virtual methods
.method public abstract getPersistentString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract setPersistentString(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setPersistentStringAndMessageFlags(Ljava/lang/String;Ljava/lang/String;[Lcom/android/email/mail/Flag;[Lcom/android/email/mail/Flag;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation
.end method
