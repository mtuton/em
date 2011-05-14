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
    .line 77
    iput-object p1, p0, Lcom/android/email/activity/EmailSearchQuery$OnSearchButtonClickListener;->this$0:Lcom/android/email/activity/EmailSearchQuery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/EmailSearchQuery;Lcom/android/email/activity/EmailSearchQuery$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
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

    .line 81
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

    .line 82
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

    .line 83
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

    .line 84
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

    .line 85
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

    .line 86
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

    .line 88
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v6, "dd/MM/yyyy hh:mm:ss a"

    invoke-direct {v2, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 89
    .local v2, formatter:Ljava/text/SimpleDateFormat;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 90
    .local v0, c:Ljava/util/Calendar;
    iget-object v6, p0, Lcom/android/email/activity/EmailSearchQuery$OnSearchButtonClickListener;->this$0:Lcom/android/email/activity/EmailSearchQuery;

    invoke-static {v6}, Lcom/android/email/activity/EmailSearchQuery;->access$200(Lcom/android/email/activity/EmailSearchQuery;)I

    move-result v6

    invoke-virtual {v0, v11, v6}, Ljava/util/Calendar;->set(II)V

    .line 91
    const/4 v6, 0x2

    iget-object v7, p0, Lcom/android/email/activity/EmailSearchQuery$OnSearchButtonClickListener;->this$0:Lcom/android/email/activity/EmailSearchQuery;

    invoke-static {v7}, Lcom/android/email/activity/EmailSearchQuery;->access$300(Lcom/android/email/activity/EmailSearchQuery;)I

    move-result v7

    invoke-virtual {v0, v6, v7}, Ljava/util/Calendar;->set(II)V

    .line 92
    const/4 v6, 0x5

    iget-object v7, p0, Lcom/android/email/activity/EmailSearchQuery$OnSearchButtonClickListener;->this$0:Lcom/android/email/activity/EmailSearchQuery;

    invoke-static {v7}, Lcom/android/email/activity/EmailSearchQuery;->access$400(Lcom/android/email/activity/EmailSearchQuery;)I

    move-result v7

    invoke-virtual {v0, v6, v7}, Ljava/util/Calendar;->set(II)V

    .line 93
    iget-object v6, p0, Lcom/android/email/activity/EmailSearchQuery$OnSearchButtonClickListener;->this$0:Lcom/android/email/activity/EmailSearchQuery;

    invoke-static {v6}, Lcom/android/email/activity/EmailSearchQuery;->access$800(Lcom/android/email/activity/EmailSearchQuery;)I

    move-result v6

    if-lt v6, v9, :cond_0

    .line 94
    const/16 v6, 0xa

    iget-object v7, p0, Lcom/android/email/activity/EmailSearchQuery$OnSearchButtonClickListener;->this$0:Lcom/android/email/activity/EmailSearchQuery;

    invoke-static {v7}, Lcom/android/email/activity/EmailSearchQuery;->access$800(Lcom/android/email/activity/EmailSearchQuery;)I

    move-result v7

    sub-int/2addr v7, v9

    invoke-virtual {v0, v6, v7}, Ljava/util/Calendar;->set(II)V

    .line 97
    :goto_0
    iget-object v6, p0, Lcom/android/email/activity/EmailSearchQuery$OnSearchButtonClickListener;->this$0:Lcom/android/email/activity/EmailSearchQuery;

    invoke-static {v6}, Lcom/android/email/activity/EmailSearchQuery;->access$900(Lcom/android/email/activity/EmailSearchQuery;)I

    move-result v6

    invoke-virtual {v0, v9, v6}, Ljava/util/Calendar;->set(II)V

    .line 98
    const/16 v6, 0xd

    invoke-virtual {v0, v6, v12}, Ljava/util/Calendar;->set(II)V

    .line 99
    iget-object v6, p0, Lcom/android/email/activity/EmailSearchQuery$OnSearchButtonClickListener;->this$0:Lcom/android/email/activity/EmailSearchQuery;

    invoke-static {v6}, Lcom/android/email/activity/EmailSearchQuery;->access$800(Lcom/android/email/activity/EmailSearchQuery;)I

    move-result v6

    if-ge v6, v9, :cond_1

    .line 100
    invoke-virtual {v0, v13, v12}, Ljava/util/Calendar;->set(II)V

    .line 103
    :goto_1
    iget-object v6, p0, Lcom/android/email/activity/EmailSearchQuery$OnSearchButtonClickListener;->this$0:Lcom/android/email/activity/EmailSearchQuery;

    invoke-static {v6}, Lcom/android/email/activity/EmailSearchQuery;->access$100(Lcom/android/email/activity/EmailSearchQuery;)Lcom/android/exchange/provider/EmailSearchAdapter;

    move-result-object v6

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/exchange/provider/EmailSearchAdapter;->setGreaterThanDateStr(Ljava/lang/String;)V

    .line 104
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

    .line 109
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v6, "dd/MM/yyyy hh:mm:ss a"

    invoke-direct {v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 110
    .local v5, to_formatter:Ljava/text/SimpleDateFormat;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 111
    .local v1, cTo:Ljava/util/Calendar;
    iget-object v6, p0, Lcom/android/email/activity/EmailSearchQuery$OnSearchButtonClickListener;->this$0:Lcom/android/email/activity/EmailSearchQuery;

    invoke-static {v6}, Lcom/android/email/activity/EmailSearchQuery;->access$500(Lcom/android/email/activity/EmailSearchQuery;)I

    move-result v6

    invoke-virtual {v1, v11, v6}, Ljava/util/Calendar;->set(II)V

    .line 112
    const/4 v6, 0x2

    iget-object v7, p0, Lcom/android/email/activity/EmailSearchQuery$OnSearchButtonClickListener;->this$0:Lcom/android/email/activity/EmailSearchQuery;

    invoke-static {v7}, Lcom/android/email/activity/EmailSearchQuery;->access$600(Lcom/android/email/activity/EmailSearchQuery;)I

    move-result v7

    invoke-virtual {v1, v6, v7}, Ljava/util/Calendar;->set(II)V

    .line 113
    const/4 v6, 0x5

    iget-object v7, p0, Lcom/android/email/activity/EmailSearchQuery$OnSearchButtonClickListener;->this$0:Lcom/android/email/activity/EmailSearchQuery;

    invoke-static {v7}, Lcom/android/email/activity/EmailSearchQuery;->access$700(Lcom/android/email/activity/EmailSearchQuery;)I

    move-result v7

    invoke-virtual {v1, v6, v7}, Ljava/util/Calendar;->set(II)V

    .line 114
    iget-object v6, p0, Lcom/android/email/activity/EmailSearchQuery$OnSearchButtonClickListener;->this$0:Lcom/android/email/activity/EmailSearchQuery;

    invoke-static {v6}, Lcom/android/email/activity/EmailSearchQuery;->access$1000(Lcom/android/email/activity/EmailSearchQuery;)I

    move-result v6

    if-lt v6, v9, :cond_2

    .line 115
    const/16 v6, 0xa

    iget-object v7, p0, Lcom/android/email/activity/EmailSearchQuery$OnSearchButtonClickListener;->this$0:Lcom/android/email/activity/EmailSearchQuery;

    invoke-static {v7}, Lcom/android/email/activity/EmailSearchQuery;->access$1000(Lcom/android/email/activity/EmailSearchQuery;)I

    move-result v7

    sub-int/2addr v7, v9

    invoke-virtual {v1, v6, v7}, Ljava/util/Calendar;->set(II)V

    .line 118
    :goto_2
    const/16 v6, 0xd

    invoke-virtual {v1, v6, v12}, Ljava/util/Calendar;->set(II)V

    .line 119
    iget-object v6, p0, Lcom/android/email/activity/EmailSearchQuery$OnSearchButtonClickListener;->this$0:Lcom/android/email/activity/EmailSearchQuery;

    invoke-static {v6}, Lcom/android/email/activity/EmailSearchQuery;->access$1100(Lcom/android/email/activity/EmailSearchQuery;)I

    move-result v6

    invoke-virtual {v1, v9, v6}, Ljava/util/Calendar;->set(II)V

    .line 120
    iget-object v6, p0, Lcom/android/email/activity/EmailSearchQuery$OnSearchButtonClickListener;->this$0:Lcom/android/email/activity/EmailSearchQuery;

    invoke-static {v6}, Lcom/android/email/activity/EmailSearchQuery;->access$1000(Lcom/android/email/activity/EmailSearchQuery;)I

    move-result v6

    if-ge v6, v9, :cond_3

    .line 121
    invoke-virtual {v1, v13, v12}, Ljava/util/Calendar;->set(II)V

    .line 124
    :goto_3
    iget-object v6, p0, Lcom/android/email/activity/EmailSearchQuery$OnSearchButtonClickListener;->this$0:Lcom/android/email/activity/EmailSearchQuery;

    invoke-static {v6}, Lcom/android/email/activity/EmailSearchQuery;->access$100(Lcom/android/email/activity/EmailSearchQuery;)Lcom/android/exchange/provider/EmailSearchAdapter;

    move-result-object v6

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/exchange/provider/EmailSearchAdapter;->setLessThanDateStr(Ljava/lang/String;)V

    .line 125
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

    .line 126
    iget-object v6, p0, Lcom/android/email/activity/EmailSearchQuery$OnSearchButtonClickListener;->this$0:Lcom/android/email/activity/EmailSearchQuery;

    invoke-static {v6}, Lcom/android/email/activity/EmailSearchQuery;->access$1200(Lcom/android/email/activity/EmailSearchQuery;)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 127
    iget-object v6, p0, Lcom/android/email/activity/EmailSearchQuery$OnSearchButtonClickListener;->this$0:Lcom/android/email/activity/EmailSearchQuery;

    invoke-static {v6}, Lcom/android/email/activity/EmailSearchQuery;->access$100(Lcom/android/email/activity/EmailSearchQuery;)Lcom/android/exchange/provider/EmailSearchAdapter;

    move-result-object v6

    iget-object v7, p0, Lcom/android/email/activity/EmailSearchQuery$OnSearchButtonClickListener;->this$0:Lcom/android/email/activity/EmailSearchQuery;

    invoke-static {v7}, Lcom/android/email/activity/EmailSearchQuery;->access$1200(Lcom/android/email/activity/EmailSearchQuery;)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v7

    iget-wide v7, v7, Lcom/android/email/provider/EmailContent$Mailbox;->mId:J

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/exchange/provider/EmailSearchAdapter;->setIdStr(Ljava/lang/String;)V

    .line 132
    :goto_4
    iget-object v6, p0, Lcom/android/email/activity/EmailSearchQuery$OnSearchButtonClickListener;->this$0:Lcom/android/email/activity/EmailSearchQuery;

    invoke-static {v6}, Lcom/android/email/activity/EmailSearchQuery;->access$1200(Lcom/android/email/activity/EmailSearchQuery;)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v6

    if-nez v6, :cond_5

    .line 134
    iget-object v6, p0, Lcom/android/email/activity/EmailSearchQuery$OnSearchButtonClickListener;->this$0:Lcom/android/email/activity/EmailSearchQuery;

    invoke-static {v6}, Lcom/android/email/activity/EmailSearchQuery;->access$100(Lcom/android/email/activity/EmailSearchQuery;)Lcom/android/exchange/provider/EmailSearchAdapter;

    move-result-object v6

    const-string v7, "True"

    invoke-virtual {v6, v7}, Lcom/android/exchange/provider/EmailSearchAdapter;->setoptionsDeepTraversalStr(Ljava/lang/String;)V

    .line 139
    :goto_5
    iget-object v6, p0, Lcom/android/email/activity/EmailSearchQuery$OnSearchButtonClickListener;->this$0:Lcom/android/email/activity/EmailSearchQuery;

    invoke-static {v6}, Lcom/android/email/activity/EmailSearchQuery;->access$1400(Lcom/android/email/activity/EmailSearchQuery;)Lcom/android/email/Controller;

    move-result-object v6

    iget-object v7, p0, Lcom/android/email/activity/EmailSearchQuery$OnSearchButtonClickListener;->this$0:Lcom/android/email/activity/EmailSearchQuery;

    invoke-static {v7}, Lcom/android/email/activity/EmailSearchQuery;->access$1300(Lcom/android/email/activity/EmailSearchQuery;)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v7

    iget-wide v7, v7, Lcom/android/email/provider/EmailContent$Account;->mId:J

    const/16 v9, 0x8

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/email/Controller;->findOrCreateMailboxOfType(JI)J

    move-result-wide v3

    .line 142
    .local v3, searchFolderId:J
    iget-object v6, p0, Lcom/android/email/activity/EmailSearchQuery$OnSearchButtonClickListener;->this$0:Lcom/android/email/activity/EmailSearchQuery;

    invoke-static {v6}, Lcom/android/email/activity/EmailSearchQuery;->access$100(Lcom/android/email/activity/EmailSearchQuery;)Lcom/android/exchange/provider/EmailSearchAdapter;

    move-result-object v6

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/exchange/provider/EmailSearchAdapter;->setFoldIdStr(Ljava/lang/String;)V

    .line 149
    invoke-static {}, Lcom/android/email/activity/EmailSearchQuery;->access$1500()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fzhang email Search Adapter search is called mMailbox = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/email/activity/EmailSearchQuery$OnSearchButtonClickListener;->this$0:Lcom/android/email/activity/EmailSearchQuery;

    invoke-static {v8}, Lcom/android/email/activity/EmailSearchQuery;->access$1200(Lcom/android/email/activity/EmailSearchQuery;)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v8

    iget-wide v8, v8, Lcom/android/email/provider/EmailContent$Mailbox;->mId:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " foldid ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "accoundid = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/email/activity/EmailSearchQuery$OnSearchButtonClickListener;->this$0:Lcom/android/email/activity/EmailSearchQuery;

    invoke-static {v8}, Lcom/android/email/activity/EmailSearchQuery;->access$1300(Lcom/android/email/activity/EmailSearchQuery;)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v8

    iget-wide v8, v8, Lcom/android/email/provider/EmailContent$Account;->mId:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v6, p0, Lcom/android/email/activity/EmailSearchQuery$OnSearchButtonClickListener;->this$0:Lcom/android/email/activity/EmailSearchQuery;

    invoke-static {v6}, Lcom/android/email/activity/EmailSearchQuery;->access$100(Lcom/android/email/activity/EmailSearchQuery;)Lcom/android/exchange/provider/EmailSearchAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/exchange/provider/EmailSearchAdapter;->search()I

    .line 152
    iget-object v6, p0, Lcom/android/email/activity/EmailSearchQuery$OnSearchButtonClickListener;->this$0:Lcom/android/email/activity/EmailSearchQuery;

    invoke-static {v6, v3, v4, v11}, Lcom/android/email/activity/MessageList;->actionHandleMailbox(Landroid/content/Context;JZ)V

    .line 158
    iget-object v6, p0, Lcom/android/email/activity/EmailSearchQuery$OnSearchButtonClickListener;->this$0:Lcom/android/email/activity/EmailSearchQuery;

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Lcom/android/email/activity/EmailSearchQuery;->setResult(I)V

    .line 159
    iget-object v6, p0, Lcom/android/email/activity/EmailSearchQuery$OnSearchButtonClickListener;->this$0:Lcom/android/email/activity/EmailSearchQuery;

    invoke-virtual {v6}, Lcom/android/email/activity/EmailSearchQuery;->finish()V

    .line 160
    return-void

    .line 96
    .end local v1           #cTo:Ljava/util/Calendar;
    .end local v3           #searchFolderId:J
    .end local v5           #to_formatter:Ljava/text/SimpleDateFormat;
    :cond_0
    const/16 v6, 0xa

    iget-object v7, p0, Lcom/android/email/activity/EmailSearchQuery$OnSearchButtonClickListener;->this$0:Lcom/android/email/activity/EmailSearchQuery;

    invoke-static {v7}, Lcom/android/email/activity/EmailSearchQuery;->access$800(Lcom/android/email/activity/EmailSearchQuery;)I

    move-result v7

    invoke-virtual {v0, v6, v7}, Ljava/util/Calendar;->set(II)V

    goto/16 :goto_0

    .line 102
    :cond_1
    invoke-virtual {v0, v13, v11}, Ljava/util/Calendar;->set(II)V

    goto/16 :goto_1

    .line 117
    .restart local v1       #cTo:Ljava/util/Calendar;
    .restart local v5       #to_formatter:Ljava/text/SimpleDateFormat;
    :cond_2
    const/16 v6, 0xa

    iget-object v7, p0, Lcom/android/email/activity/EmailSearchQuery$OnSearchButtonClickListener;->this$0:Lcom/android/email/activity/EmailSearchQuery;

    invoke-static {v7}, Lcom/android/email/activity/EmailSearchQuery;->access$1000(Lcom/android/email/activity/EmailSearchQuery;)I

    move-result v7

    invoke-virtual {v1, v6, v7}, Ljava/util/Calendar;->set(II)V

    goto/16 :goto_2

    .line 123
    :cond_3
    invoke-virtual {v1, v13, v11}, Ljava/util/Calendar;->set(II)V

    goto/16 :goto_3

    .line 130
    :cond_4
    iget-object v6, p0, Lcom/android/email/activity/EmailSearchQuery$OnSearchButtonClickListener;->this$0:Lcom/android/email/activity/EmailSearchQuery;

    invoke-static {v6}, Lcom/android/email/activity/EmailSearchQuery;->access$100(Lcom/android/email/activity/EmailSearchQuery;)Lcom/android/exchange/provider/EmailSearchAdapter;

    move-result-object v6

    const-string v7, "NoneId"

    invoke-virtual {v6, v7}, Lcom/android/exchange/provider/EmailSearchAdapter;->setIdStr(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 136
    :cond_5
    iget-object v6, p0, Lcom/android/email/activity/EmailSearchQuery$OnSearchButtonClickListener;->this$0:Lcom/android/email/activity/EmailSearchQuery;

    invoke-static {v6}, Lcom/android/email/activity/EmailSearchQuery;->access$100(Lcom/android/email/activity/EmailSearchQuery;)Lcom/android/exchange/provider/EmailSearchAdapter;

    move-result-object v6

    const-string v7, "False"

    invoke-virtual {v6, v7}, Lcom/android/exchange/provider/EmailSearchAdapter;->setoptionsDeepTraversalStr(Ljava/lang/String;)V

    goto/16 :goto_5
.end method
