.class Lcom/android/email/activity/EmailSearchQuery$OnSearchButtonClickListener;
.super Ljava/lang/Object;
.source "EmailSearchQuery.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/EmailSearchQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnSearchButtonClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/EmailSearchQuery;


# direct methods
.method private constructor <init>(Lcom/android/email/activity/EmailSearchQuery;)V
    .locals 0
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/email/activity/EmailSearchQuery$OnSearchButtonClickListener;->this$0:Lcom/android/email/activity/EmailSearchQuery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/EmailSearchQuery;Lcom/android/email/activity/EmailSearchQuery$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/android/email/activity/EmailSearchQuery$OnSearchButtonClickListener;-><init>(Lcom/android/email/activity/EmailSearchQuery;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 14
    .parameter "v"

    .prologue
    const/16 v13, 0x9

    const/4 v12, 0x0

    const/4 v11, 0x1

    const/16 v9, 0xc

    const-string v10, " "

    .line 91
    iget-object v6, p0, Lcom/android/email/activity/EmailSearchQuery$OnSearchButtonClickListener;->this$0:Lcom/android/email/activity/EmailSearchQuery;

    invoke-static {v6}, Lcom/android/email/activity/EmailSearchQuery;->access$100(Lcom/android/email/activity/EmailSearchQuery;)Lcom/android/exchange/provider/EmailSearchAdapter;

    move-result-object v6

    iget-object v7, p0, Lcom/android/email/activity/EmailSearchQuery$OnSearchButtonClickListener;->this$0:Lcom/android/email/activity/EmailSearchQuery;

    invoke-static {v7}, Lcom/android/email/activity/EmailSearchQuery;->access$000(Lcom/android/email/activity/EmailSearchQuery;)Landroid/widget/EditText;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/exchange/provider/EmailSearchAdapter;->setFreeText(Ljava/lang/String;)V

    .line 92
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Text entered is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/email/activity/EmailSearchQuery$OnSearchButtonClickListener;->this$0:Lcom/android/email/activity/EmailSearchQuery;

    invoke-static {v8}, Lcom/android/email/activity/EmailSearchQuery;->access$000(Lcom/android/email/activity/EmailSearchQuery;)Landroid/widget/EditText;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 93
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "from y m d "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/email/activity/EmailSearchQuery$OnSearchButtonClickListener;->this$0:Lcom/android/email/activity/EmailSearchQuery;

    invoke-static {v8}, Lcom/android/email/activity/EmailSearchQuery;->access$200(Lcom/android/email/activity/EmailSearchQuery;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/email/activity/EmailSearchQuery$OnSearchButtonClickListener;->this$0:Lcom/android/email/activity/EmailSearchQuery;

    invoke-static {v8}, Lcom/android/email/activity/EmailSearchQuery;->access$300(Lcom/android/email/activity/EmailSearchQuery;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/email/activity/EmailSearchQuery$OnSearchButtonClickListener;->this$0:Lcom/android/email/activity/EmailSearchQuery;

    invoke-static {v8}, Lcom/android/email/activity/EmailSearchQuery;->access$400(Lcom/android/email/activity/EmailSearchQuery;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 94
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "to y m d "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/email/activity/EmailSearchQuery$OnSearchButtonClickListener;->this$0:Lcom/android/email/activity/EmailSearchQuery;

    invoke-static {v8}, Lcom/android/email/activity/EmailSearchQuery;->access$500(Lcom/android/email/activity/EmailSearchQuery;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/email/activity/EmailSearchQuery$OnSearchButtonClickListener;->this$0:Lcom/android/email/activity/EmailSearchQuery;

    invoke-static {v8}, Lcom/android/email/activity/EmailSearchQuery;->access$600(Lcom/android/email/activity/EmailSearchQuery;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/email/activity/EmailSearchQuery$OnSearchButtonClickListener;->this$0:Lcom/android/email/activity/EmailSearchQuery;

    invoke-static {v8}, Lcom/android/email/activity/EmailSearchQuery;->access$700(Lcom/android/email/activity/EmailSearchQuery;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 95
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "from h m "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/email/activity/EmailSearchQuery$OnSearchButtonClickListener;->this$0:Lcom/android/email/activity/EmailSearchQuery;

    invoke-static {v8}, Lcom/android/email/activity/EmailSearchQuery;->access$800(Lcom/android/email/activity/EmailSearchQuery;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/email/activity/EmailSearchQuery$OnSearchButtonClickListener;->this$0:Lcom/android/email/activity/EmailSearchQuery;

    invoke-static {v8}, Lcom/android/email/activity/EmailSearchQuery;->access$900(Lcom/android/email/activity/EmailSearchQuery;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 96
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "to h m "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/email/activity/EmailSearchQuery$OnSearchButtonClickListener;->this$0:Lcom/android/email/activity/EmailSearchQuery;

    invoke-static {v8}, Lcom/android/email/activity/EmailSearchQuery;->access$1000(Lcom/android/email/activity/EmailSearchQuery;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/email/activity/EmailSearchQuery$OnSearchButtonClickListener;->this$0:Lcom/android/email/activity/EmailSearchQuery;

    invoke-static {v8}, Lcom/android/email/activity/EmailSearchQuery;->access$1100(Lcom/android/email/activity/EmailSearchQuery;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 98
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v6, "dd/MM/yyyy hh:mm:ss a"

    invoke-direct {v2, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 99
    .local v2, formatter:Ljava/text/SimpleDateFormat;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 100
    .local v0, c:Ljava/util/Calendar;
    iget-object v6, p0, Lcom/android/email/activity/EmailSearchQuery$OnSearchButtonClickListener;->this$0:Lcom/android/email/activity/EmailSearchQuery;

    invoke-static {v6}, Lcom/android/email/activity/EmailSearchQuery;->access$200(Lcom/android/email/activity/EmailSearchQuery;)I

    move-result v6

    invoke-virtual {v0, v11, v6}, Ljava/util/Calendar;->set(II)V

    .line 101
    const/4 v6, 0x2

    iget-object v7, p0, Lcom/android/email/activity/EmailSearchQuery$OnSearchButtonClickListener;->this$0:Lcom/android/email/activity/EmailSearchQuery;

    invoke-static {v7}, Lcom/android/email/activity/EmailSearchQuery;->access$300(Lcom/android/email/activity/EmailSearchQuery;)I

    move-result v7

    invoke-virtual {v0, v6, v7}, Ljava/util/Calendar;->set(II)V

    .line 102
    const/4 v6, 0x5

    iget-object v7, p0, Lcom/android/email/activity/EmailSearchQuery$OnSearchButtonClickListener;->this$0:Lcom/android/email/activity/EmailSearchQuery;

    invoke-static {v7}, Lcom/android/email/activity/EmailSearchQuery;->access$400(Lcom/android/email/activity/EmailSearchQuery;)I

    move-result v7

    invoke-virtual {v0, v6, v7}, Ljava/util/Calendar;->set(II)V

    .line 103
    iget-object v6, p0, Lcom/android/email/activity/EmailSearchQuery$OnSearchButtonClickListener;->this$0:Lcom/android/email/activity/EmailSearchQuery;

    invoke-static {v6}, Lcom/android/email/activity/EmailSearchQuery;->access$800(Lcom/android/email/activity/EmailSearchQuery;)I

    move-result v6

    if-lt v6, v9, :cond_1

    .line 104
    const/16 v6, 0xa

    iget-object v7, p0, Lcom/android/email/activity/EmailSearchQuery$OnSearchButtonClickListener;->this$0:Lcom/android/email/activity/EmailSearchQuery;

    invoke-static {v7}, Lcom/android/email/activity/EmailSearchQuery;->access$800(Lcom/android/email/activity/EmailSearchQuery;)I

    move-result v7

    sub-int/2addr v7, v9

    invoke-virtual {v0, v6, v7}, Ljava/util/Calendar;->set(II)V

    .line 107
    :goto_0
    iget-object v6, p0, Lcom/android/email/activity/EmailSearchQuery$OnSearchButtonClickListener;->this$0:Lcom/android/email/activity/EmailSearchQuery;

    invoke-static {v6}, Lcom/android/email/activity/EmailSearchQuery;->access$900(Lcom/android/email/activity/EmailSearchQuery;)I

    move-result v6

    invoke-virtual {v0, v9, v6}, Ljava/util/Calendar;->set(II)V

    .line 108
    const/16 v6, 0xd

    invoke-virtual {v0, v6, v12}, Ljava/util/Calendar;->set(II)V

    .line 109
    iget-object v6, p0, Lcom/android/email/activity/EmailSearchQuery$OnSearchButtonClickListener;->this$0:Lcom/android/email/activity/EmailSearchQuery;

    invoke-static {v6}, Lcom/android/email/activity/EmailSearchQuery;->access$800(Lcom/android/email/activity/EmailSearchQuery;)I

    move-result v6

    if-ge v6, v9, :cond_2

    .line 110
    invoke-virtual {v0, v13, v12}, Ljava/util/Calendar;->set(II)V

    .line 113
    :goto_1
    iget-object v6, p0, Lcom/android/email/activity/EmailSearchQuery$OnSearchButtonClickListener;->this$0:Lcom/android/email/activity/EmailSearchQuery;

    invoke-static {v6}, Lcom/android/email/activity/EmailSearchQuery;->access$100(Lcom/android/email/activity/EmailSearchQuery;)Lcom/android/exchange/provider/EmailSearchAdapter;

    move-result-object v6

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/exchange/provider/EmailSearchAdapter;->setGreaterThanDateStr(Ljava/lang/String;)V

    .line 114
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "on click greater + "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 119
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v6, "dd/MM/yyyy hh:mm:ss a"

    invoke-direct {v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 120
    .local v5, to_formatter:Ljava/text/SimpleDateFormat;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 121
    .local v1, cTo:Ljava/util/Calendar;
    iget-object v6, p0, Lcom/android/email/activity/EmailSearchQuery$OnSearchButtonClickListener;->this$0:Lcom/android/email/activity/EmailSearchQuery;

    invoke-static {v6}, Lcom/android/email/activity/EmailSearchQuery;->access$500(Lcom/android/email/activity/EmailSearchQuery;)I

    move-result v6

    invoke-virtual {v1, v11, v6}, Ljava/util/Calendar;->set(II)V

    .line 122
    const/4 v6, 0x2

    iget-object v7, p0, Lcom/android/email/activity/EmailSearchQuery$OnSearchButtonClickListener;->this$0:Lcom/android/email/activity/EmailSearchQuery;

    invoke-static {v7}, Lcom/android/email/activity/EmailSearchQuery;->access$600(Lcom/android/email/activity/EmailSearchQuery;)I

    move-result v7

    invoke-virtual {v1, v6, v7}, Ljava/util/Calendar;->set(II)V

    .line 123
    const/4 v6, 0x5

    iget-object v7, p0, Lcom/android/email/activity/EmailSearchQuery$OnSearchButtonClickListener;->this$0:Lcom/android/email/activity/EmailSearchQuery;

    invoke-static {v7}, Lcom/android/email/activity/EmailSearchQuery;->access$700(Lcom/android/email/activity/EmailSearchQuery;)I

    move-result v7

    invoke-virtual {v1, v6, v7}, Ljava/util/Calendar;->set(II)V

    .line 124
    iget-object v6, p0, Lcom/android/email/activity/EmailSearchQuery$OnSearchButtonClickListener;->this$0:Lcom/android/email/activity/EmailSearchQuery;

    invoke-static {v6}, Lcom/android/email/activity/EmailSearchQuery;->access$1000(Lcom/android/email/activity/EmailSearchQuery;)I

    move-result v6

    if-lt v6, v9, :cond_3

    .line 125
    const/16 v6, 0xa

    iget-object v7, p0, Lcom/android/email/activity/EmailSearchQuery$OnSearchButtonClickListener;->this$0:Lcom/android/email/activity/EmailSearchQuery;

    invoke-static {v7}, Lcom/android/email/activity/EmailSearchQuery;->access$1000(Lcom/android/email/activity/EmailSearchQuery;)I

    move-result v7

    sub-int/2addr v7, v9

    invoke-virtual {v1, v6, v7}, Ljava/util/Calendar;->set(II)V

    .line 128
    :goto_2
    const/16 v6, 0xd

    invoke-virtual {v1, v6, v12}, Ljava/util/Calendar;->set(II)V

    .line 129
    iget-object v6, p0, Lcom/android/email/activity/EmailSearchQuery$OnSearchButtonClickListener;->this$0:Lcom/android/email/activity/EmailSearchQuery;

    invoke-static {v6}, Lcom/android/email/activity/EmailSearchQuery;->access$1100(Lcom/android/email/activity/EmailSearchQuery;)I

    move-result v6

    invoke-virtual {v1, v9, v6}, Ljava/util/Calendar;->set(II)V

    .line 130
    iget-object v6, p0, Lcom/android/email/activity/EmailSearchQuery$OnSearchButtonClickListener;->this$0:Lcom/android/email/activity/EmailSearchQuery;

    invoke-static {v6}, Lcom/android/email/activity/EmailSearchQuery;->access$1000(Lcom/android/email/activity/EmailSearchQuery;)I

    move-result v6

    if-ge v6, v9, :cond_4

    .line 131
    invoke-virtual {v1, v13, v12}, Ljava/util/Calendar;->set(II)V

    .line 134
    :goto_3
    iget-object v6, p0, Lcom/android/email/activity/EmailSearchQuery$OnSearchButtonClickListener;->this$0:Lcom/android/email/activity/EmailSearchQuery;

    invoke-static {v6}, Lcom/android/email/activity/EmailSearchQuery;->access$100(Lcom/android/email/activity/EmailSearchQuery;)Lcom/android/exchange/provider/EmailSearchAdapter;

    move-result-object v6

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/exchange/provider/EmailSearchAdapter;->setLessThanDateStr(Ljava/lang/String;)V

    .line 135
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "on click less + "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 136
    iget-object v6, p0, Lcom/android/email/activity/EmailSearchQuery$OnSearchButtonClickListener;->this$0:Lcom/android/email/activity/EmailSearchQuery;

    invoke-static {v6}, Lcom/android/email/activity/EmailSearchQuery;->access$1200(Lcom/android/email/activity/EmailSearchQuery;)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 137
    iget-object v6, p0, Lcom/android/email/activity/EmailSearchQuery$OnSearchButtonClickListener;->this$0:Lcom/android/email/activity/EmailSearchQuery;

    invoke-static {v6}, Lcom/android/email/activity/EmailSearchQuery;->access$100(Lcom/android/email/activity/EmailSearchQuery;)Lcom/android/exchange/provider/EmailSearchAdapter;

    move-result-object v6

    iget-object v7, p0, Lcom/android/email/activity/EmailSearchQuery$OnSearchButtonClickListener;->this$0:Lcom/android/email/activity/EmailSearchQuery;

    invoke-static {v7}, Lcom/android/email/activity/EmailSearchQuery;->access$1200(Lcom/android/email/activity/EmailSearchQuery;)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v7

    iget-wide v7, v7, Lcom/android/email/provider/EmailContent;->mId:J

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/exchange/provider/EmailSearchAdapter;->setIdStr(Ljava/lang/String;)V

    .line 145
    :goto_4
    iget-object v6, p0, Lcom/android/email/activity/EmailSearchQuery$OnSearchButtonClickListener;->this$0:Lcom/android/email/activity/EmailSearchQuery;

    invoke-static {v6}, Lcom/android/email/activity/EmailSearchQuery;->access$1200(Lcom/android/email/activity/EmailSearchQuery;)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/email/activity/EmailSearchQuery$OnSearchButtonClickListener;->this$0:Lcom/android/email/activity/EmailSearchQuery;

    invoke-static {v6}, Lcom/android/email/activity/EmailSearchQuery;->access$1300(Lcom/android/email/activity/EmailSearchQuery;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 147
    :cond_0
    iget-object v6, p0, Lcom/android/email/activity/EmailSearchQuery$OnSearchButtonClickListener;->this$0:Lcom/android/email/activity/EmailSearchQuery;

    invoke-static {v6}, Lcom/android/email/activity/EmailSearchQuery;->access$100(Lcom/android/email/activity/EmailSearchQuery;)Lcom/android/exchange/provider/EmailSearchAdapter;

    move-result-object v6

    const-string v7, "True"

    invoke-virtual {v6, v7}, Lcom/android/exchange/provider/EmailSearchAdapter;->setoptionsDeepTraversalStr(Ljava/lang/String;)V

    .line 152
    :goto_5
    iget-object v6, p0, Lcom/android/email/activity/EmailSearchQuery$OnSearchButtonClickListener;->this$0:Lcom/android/email/activity/EmailSearchQuery;

    invoke-static {v6}, Lcom/android/email/activity/EmailSearchQuery;->access$1500(Lcom/android/email/activity/EmailSearchQuery;)Lcom/android/email/Controller;

    move-result-object v6

    iget-object v7, p0, Lcom/android/email/activity/EmailSearchQuery$OnSearchButtonClickListener;->this$0:Lcom/android/email/activity/EmailSearchQuery;

    invoke-static {v7}, Lcom/android/email/activity/EmailSearchQuery;->access$1400(Lcom/android/email/activity/EmailSearchQuery;)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v7

    iget-wide v7, v7, Lcom/android/email/provider/EmailContent;->mId:J

    const/16 v9, 0x8

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/email/Controller;->findOrCreateMailboxOfType(JI)J

    move-result-wide v3

    .line 155
    .local v3, searchFolderId:J
    iget-object v6, p0, Lcom/android/email/activity/EmailSearchQuery$OnSearchButtonClickListener;->this$0:Lcom/android/email/activity/EmailSearchQuery;

    invoke-static {v6}, Lcom/android/email/activity/EmailSearchQuery;->access$100(Lcom/android/email/activity/EmailSearchQuery;)Lcom/android/exchange/provider/EmailSearchAdapter;

    move-result-object v6

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/exchange/provider/EmailSearchAdapter;->setFoldIdStr(Ljava/lang/String;)V

    .line 162
    iget-object v6, p0, Lcom/android/email/activity/EmailSearchQuery$OnSearchButtonClickListener;->this$0:Lcom/android/email/activity/EmailSearchQuery;

    invoke-static {v6}, Lcom/android/email/activity/EmailSearchQuery;->access$100(Lcom/android/email/activity/EmailSearchQuery;)Lcom/android/exchange/provider/EmailSearchAdapter;

    move-result-object v6

    iget-object v7, p0, Lcom/android/email/activity/EmailSearchQuery$OnSearchButtonClickListener;->this$0:Lcom/android/email/activity/EmailSearchQuery;

    invoke-static {v7}, Lcom/android/email/activity/EmailSearchQuery;->access$1300(Lcom/android/email/activity/EmailSearchQuery;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/exchange/provider/EmailSearchAdapter;->setConvIdStr(Ljava/lang/String;)V

    .line 166
    iget-object v6, p0, Lcom/android/email/activity/EmailSearchQuery$OnSearchButtonClickListener;->this$0:Lcom/android/email/activity/EmailSearchQuery;

    invoke-static {v6}, Lcom/android/email/activity/EmailSearchQuery;->access$100(Lcom/android/email/activity/EmailSearchQuery;)Lcom/android/exchange/provider/EmailSearchAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/exchange/provider/EmailSearchAdapter;->search()I

    .line 168
    iget-object v6, p0, Lcom/android/email/activity/EmailSearchQuery$OnSearchButtonClickListener;->this$0:Lcom/android/email/activity/EmailSearchQuery;

    invoke-static {v6, v3, v4, v11}, Lcom/android/email/activity/MessageList;->actionHandleMailbox(Landroid/content/Context;JZ)V

    .line 174
    iget-object v6, p0, Lcom/android/email/activity/EmailSearchQuery$OnSearchButtonClickListener;->this$0:Lcom/android/email/activity/EmailSearchQuery;

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Lcom/android/email/activity/EmailSearchQuery;->setResult(I)V

    .line 175
    iget-object v6, p0, Lcom/android/email/activity/EmailSearchQuery$OnSearchButtonClickListener;->this$0:Lcom/android/email/activity/EmailSearchQuery;

    invoke-virtual {v6}, Lcom/android/email/activity/EmailSearchQuery;->finish()V

    .line 176
    return-void

    .line 106
    .end local v1           #cTo:Ljava/util/Calendar;
    .end local v3           #searchFolderId:J
    .end local v5           #to_formatter:Ljava/text/SimpleDateFormat;
    :cond_1
    const/16 v6, 0xa

    iget-object v7, p0, Lcom/android/email/activity/EmailSearchQuery$OnSearchButtonClickListener;->this$0:Lcom/android/email/activity/EmailSearchQuery;

    invoke-static {v7}, Lcom/android/email/activity/EmailSearchQuery;->access$800(Lcom/android/email/activity/EmailSearchQuery;)I

    move-result v7

    invoke-virtual {v0, v6, v7}, Ljava/util/Calendar;->set(II)V

    goto/16 :goto_0

    .line 112
    :cond_2
    invoke-virtual {v0, v13, v11}, Ljava/util/Calendar;->set(II)V

    goto/16 :goto_1

    .line 127
    .restart local v1       #cTo:Ljava/util/Calendar;
    .restart local v5       #to_formatter:Ljava/text/SimpleDateFormat;
    :cond_3
    const/16 v6, 0xa

    iget-object v7, p0, Lcom/android/email/activity/EmailSearchQuery$OnSearchButtonClickListener;->this$0:Lcom/android/email/activity/EmailSearchQuery;

    invoke-static {v7}, Lcom/android/email/activity/EmailSearchQuery;->access$1000(Lcom/android/email/activity/EmailSearchQuery;)I

    move-result v7

    invoke-virtual {v1, v6, v7}, Ljava/util/Calendar;->set(II)V

    goto/16 :goto_2

    .line 133
    :cond_4
    invoke-virtual {v1, v13, v11}, Ljava/util/Calendar;->set(II)V

    goto/16 :goto_3

    .line 140
    :cond_5
    iget-object v6, p0, Lcom/android/email/activity/EmailSearchQuery$OnSearchButtonClickListener;->this$0:Lcom/android/email/activity/EmailSearchQuery;

    invoke-static {v6}, Lcom/android/email/activity/EmailSearchQuery;->access$100(Lcom/android/email/activity/EmailSearchQuery;)Lcom/android/exchange/provider/EmailSearchAdapter;

    move-result-object v6

    const-string v7, "NoneId"

    invoke-virtual {v6, v7}, Lcom/android/exchange/provider/EmailSearchAdapter;->setIdStr(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 149
    :cond_6
    iget-object v6, p0, Lcom/android/email/activity/EmailSearchQuery$OnSearchButtonClickListener;->this$0:Lcom/android/email/activity/EmailSearchQuery;

    invoke-static {v6}, Lcom/android/email/activity/EmailSearchQuery;->access$100(Lcom/android/email/activity/EmailSearchQuery;)Lcom/android/exchange/provider/EmailSearchAdapter;

    move-result-object v6

    const-string v7, "False"

    invoke-virtual {v6, v7}, Lcom/android/exchange/provider/EmailSearchAdapter;->setoptionsDeepTraversalStr(Ljava/lang/String;)V

    goto/16 :goto_5
.end method
