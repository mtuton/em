.class public interface abstract Lcom/android/email/mail/StoreSynchronizer;
.super Ljava/lang/Object;
.source "StoreSynchronizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/mail/StoreSynchronizer$SyncResults;
    }
.end annotation


# virtual methods
.method public abstract SynchronizeMessagesSynchronous(Lcom/android/email/provider/EmailContent$Account;Lcom/android/email/provider/EmailContent$Mailbox;Lcom/android/email/GroupMessagingListener;Landroid/content/Context;)Lcom/android/email/mail/StoreSynchronizer$SyncResults;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation
.end method
