.class Lcom/android/email/activity/setup/AccountSettings$1;
.super Landroid/os/Handler;
.source "AccountSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/AccountSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSettings;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 513
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettings$1;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const v4, 0x7f0802c3

    const/16 v2, 0x200

    const/4 v7, 0x1

    const/16 v3, 0x64

    const/4 v6, 0x0

    .line 516
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings$1;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSettings;->access$500(Lcom/android/email/activity/setup/AccountSettings;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 517
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings$1;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSettings;->access$500(Lcom/android/email/activity/setup/AccountSettings;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 518
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 600
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings$1;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-virtual {v1}, Lcom/android/email/activity/setup/AccountSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080238

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 603
    :cond_1
    :goto_0
    return-void

    .line 520
    :sswitch_0
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings$1;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/email/activity/setup/AccountSettings;->access$600(Lcom/android/email/activity/setup/AccountSettings;Landroid/os/Bundle;)V

    goto :goto_0

    .line 523
    :sswitch_1
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings$1;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-virtual {v1}, Lcom/android/email/activity/setup/AccountSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080233

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 526
    :sswitch_2
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings$1;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-virtual {v1}, Lcom/android/email/activity/setup/AccountSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080237

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 530
    :sswitch_3
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings$1;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettings$1;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettings$1;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    const v5, 0x7f080222

    invoke-virtual {v4, v5}, Lcom/android/email/activity/setup/AccountSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4, v7, v6}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/email/activity/setup/AccountSettings;->access$502(Lcom/android/email/activity/setup/AccountSettings;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    goto :goto_0

    .line 537
    :sswitch_4
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings$1;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-virtual {v1}, Lcom/android/email/activity/setup/AccountSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080236

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 540
    :sswitch_5
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings$1;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-virtual {v1}, Lcom/android/email/activity/setup/AccountSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f08010d

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 544
    :sswitch_6
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings$1;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-virtual {v1}, Lcom/android/email/activity/setup/AccountSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f08010f

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 548
    :sswitch_7
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings$1;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-virtual {v1}, Lcom/android/email/activity/setup/AccountSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettings$1;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    const v4, 0x7f08027f

    invoke-virtual {v3, v4}, Lcom/android/email/activity/setup/AccountSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 551
    :sswitch_8
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings$1;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-virtual {v1}, Lcom/android/email/activity/setup/AccountSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettings$1;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    const v4, 0x7f080280

    invoke-virtual {v3, v4}, Lcom/android/email/activity/setup/AccountSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 554
    :sswitch_9
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings$1;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-virtual {v1}, Lcom/android/email/activity/setup/AccountSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettings$1;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    const v4, 0x7f080281

    invoke-virtual {v3, v4}, Lcom/android/email/activity/setup/AccountSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 559
    :sswitch_a
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings$1;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-virtual {v1}, Lcom/android/email/activity/setup/AccountSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "success"

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 564
    :sswitch_b
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings$1;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSettings;->access$700(Lcom/android/email/activity/setup/AccountSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 565
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings$1;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSettings;->access$800(Lcom/android/email/activity/setup/AccountSettings;)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v1

    iget v1, v1, Lcom/android/email/provider/EmailContent$Account;->mFlags:I

    and-int/lit16 v1, v1, 0x200

    if-ne v1, v2, :cond_2

    .line 566
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings$1;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSettings;->access$700(Lcom/android/email/activity/setup/AccountSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 567
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings$1;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSettings;->access$700(Lcom/android/email/activity/setup/AccountSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 572
    :goto_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 573
    .local v0, smscv:Landroid/content/ContentValues;
    const-string v1, "flags"

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettings$1;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-static {v2}, Lcom/android/email/activity/setup/AccountSettings;->access$800(Lcom/android/email/activity/setup/AccountSettings;)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v2

    iget v2, v2, Lcom/android/email/provider/EmailContent$Account;->mFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 574
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings$1;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSettings;->access$800(Lcom/android/email/activity/setup/AccountSettings;)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettings$1;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-virtual {v1, v2, v0}, Lcom/android/email/provider/EmailContent$Account;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 575
    const-string v1, "AccountSettings"

    const-string v2, "SMS settings successfully changed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 569
    .end local v0           #smscv:Landroid/content/ContentValues;
    :cond_2
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings$1;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSettings;->access$700(Lcom/android/email/activity/setup/AccountSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 570
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings$1;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSettings;->access$700(Lcom/android/email/activity/setup/AccountSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    const v2, 0x7f0802c4

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_1

    .line 579
    :sswitch_c
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings$1;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSettings;->access$800(Lcom/android/email/activity/setup/AccountSettings;)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v1

    iget v1, v1, Lcom/android/email/provider/EmailContent$Account;->mFlags:I

    and-int/lit16 v1, v1, 0x200

    if-ne v1, v2, :cond_3

    .line 580
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings$1;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSettings;->access$700(Lcom/android/email/activity/setup/AccountSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 581
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings$1;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSettings;->access$700(Lcom/android/email/activity/setup/AccountSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    const v2, 0x7f0802c4

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 582
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings$1;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSettings;->access$800(Lcom/android/email/activity/setup/AccountSettings;)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v1

    iget v2, v1, Lcom/android/email/provider/EmailContent$Account;->mFlags:I

    and-int/lit16 v2, v2, -0x201

    iput v2, v1, Lcom/android/email/provider/EmailContent$Account;->mFlags:I

    .line 588
    :goto_2
    const-string v1, "AccountSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unable to change the SMS settings : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings$1;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-virtual {v1}, Lcom/android/email/activity/setup/AccountSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0802c6

    const/16 v3, 0x1f4

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 584
    :cond_3
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings$1;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSettings;->access$700(Lcom/android/email/activity/setup/AccountSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 585
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings$1;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSettings;->access$700(Lcom/android/email/activity/setup/AccountSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 586
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings$1;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSettings;->access$800(Lcom/android/email/activity/setup/AccountSettings;)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v1

    iget v2, v1, Lcom/android/email/provider/EmailContent$Account;->mFlags:I

    or-int/lit16 v2, v2, 0x200

    iput v2, v1, Lcom/android/email/provider/EmailContent$Account;->mFlags:I

    goto :goto_2

    .line 592
    :sswitch_d
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings$1;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettings$1;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettings$1;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    const v5, 0x7f0802c5

    invoke-virtual {v4, v5}, Lcom/android/email/activity/setup/AccountSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4, v7, v6}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/email/activity/setup/AccountSettings;->access$502(Lcom/android/email/activity/setup/AccountSettings;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    goto/16 :goto_0

    .line 518
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x8 -> :sswitch_a
        0x9 -> :sswitch_d
        0xa -> :sswitch_b
        0xb -> :sswitch_c
        0x64 -> :sswitch_7
        0x65 -> :sswitch_8
        0x66 -> :sswitch_9
    .end sparse-switch
.end method
