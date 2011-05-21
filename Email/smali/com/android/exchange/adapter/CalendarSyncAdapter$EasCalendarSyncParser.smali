.class public Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;
.super Lcom/android/exchange/adapter/AbstractSyncParser;
.source "CalendarSyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/adapter/CalendarSyncAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EasCalendarSyncParser"
.end annotation


# instance fields
.field mAccountUri:Landroid/net/Uri;

.field mBindArgument:[Ljava/lang/String;

.field mOps:Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;

.field final synthetic this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;


# direct methods
.method public constructor <init>(Lcom/android/exchange/adapter/CalendarSyncAdapter;Ljava/io/InputStream;Lcom/android/exchange/adapter/CalendarSyncAdapter;)V
    .locals 3
    .parameter
    .parameter "in"
    .parameter "adapter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 285
    iput-object p1, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    .line 286
    invoke-direct {p0, p2, p3}, Lcom/android/exchange/adapter/AbstractSyncParser;-><init>(Ljava/io/InputStream;Lcom/android/exchange/adapter/AbstractSyncAdapter;)V

    .line 280
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mBindArgument:[Ljava/lang/String;

    .line 282
    new-instance v0, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;

    iget-object v1, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;-><init>(Lcom/android/exchange/adapter/CalendarSyncAdapter;Lcom/android/exchange/adapter/CalendarSyncAdapter$1;)V

    iput-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mOps:Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;

    .line 287
    const-string v0, "CalendarParser"

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->setLoggingTag(Ljava/lang/String;)V

    .line 288
    sget-object v0, Landroid/provider/Calendar$Events;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mAccountUri:Landroid/net/Uri;

    .line 289
    return-void
.end method

.method private addOrganizerToAttendees(Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;JLjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "ops"
    .parameter "eventId"
    .parameter "organizerName"
    .parameter "organizerEmail"

    .prologue
    const/4 v3, 0x1

    .line 342
    if-nez p4, :cond_0

    if-eqz p5, :cond_3

    .line 343
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 344
    .local v0, attendeeCv:Landroid/content/ContentValues;
    if-eqz p4, :cond_1

    .line 345
    const-string v1, "attendeeName"

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    :cond_1
    if-eqz p5, :cond_2

    .line 348
    const-string v1, "attendeeEmail"

    invoke-virtual {v0, v1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    :cond_2
    const-string v1, "attendeeRelationship"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 351
    const-string v1, "attendeeType"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 352
    const-string v1, "attendeeStatus"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 353
    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-gez v1, :cond_4

    .line 354
    invoke-virtual {p1, v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->newAttendee(Landroid/content/ContentValues;)V

    .line 359
    .end local v0           #attendeeCv:Landroid/content/ContentValues;
    :cond_3
    :goto_0
    return-void

    .line 356
    .restart local v0       #attendeeCv:Landroid/content/ContentValues;
    :cond_4
    invoke-virtual {p1, v0, p2, p3}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->updatedAttendee(Landroid/content/ContentValues;J)V

    goto :goto_0
.end method

.method private attendeeParser(Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;J)Landroid/content/ContentValues;
    .locals 9
    .parameter "ops"
    .parameter "eventId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x3

    .line 1087
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1088
    .local v0, cv:Landroid/content/ContentValues;
    :goto_0
    const/16 v3, 0x108

    invoke-virtual {p0, v3}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->nextTag(I)I

    move-result v3

    if-eq v3, v5, :cond_4

    .line 1089
    iget v3, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->tag:I

    sparse-switch v3, :sswitch_data_0

    .line 1126
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->skipTag()V

    goto :goto_0

    .line 1091
    :sswitch_0
    const-string v3, "attendeeEmail"

    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1094
    :sswitch_1
    const-string v3, "attendeeName"

    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1103
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValueInt()I

    move-result v1

    .line 1104
    .local v1, status:I
    const-string v3, "attendeeStatus"

    if-ne v1, v7, :cond_0

    move v4, v8

    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    :cond_0
    if-ne v1, v5, :cond_1

    move v4, v6

    goto :goto_1

    :cond_1
    if-ne v1, v8, :cond_2

    move v4, v7

    goto :goto_1

    :cond_2
    const/4 v4, 0x5

    if-ne v1, v4, :cond_3

    move v4, v5

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    .line 1113
    .end local v1           #status:I
    :sswitch_3
    const/4 v2, 0x0

    .line 1115
    .local v2, type:I
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValueInt()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 1123
    :goto_2
    const-string v3, "attendeeType"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 1117
    :pswitch_0
    const/4 v2, 0x1

    .line 1118
    goto :goto_2

    .line 1120
    :pswitch_1
    const/4 v2, 0x2

    goto :goto_2

    .line 1129
    .end local v2           #type:I
    :cond_4
    const-string v3, "attendeeRelationship"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1130
    return-object v0

    .line 1089
    :sswitch_data_0
    .sparse-switch
        0x109 -> :sswitch_0
        0x10a -> :sswitch_1
        0x129 -> :sswitch_2
        0x12a -> :sswitch_3
    .end sparse-switch

    .line 1115
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private attendeesParser(Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;J)Ljava/util/ArrayList;
    .locals 5
    .parameter "ops"
    .parameter "eventId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;",
            "J)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1062
    const/4 v0, 0x0

    .line 1063
    .local v0, attendeeCount:I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1064
    .local v1, attendeeValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :cond_0
    :goto_0
    const/16 v3, 0x107

    invoke-virtual {p0, v3}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->nextTag(I)I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    .line 1065
    iget v3, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->tag:I

    packed-switch v3, :pswitch_data_0

    .line 1079
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->skipTag()V

    goto :goto_0

    .line 1067
    :pswitch_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->attendeeParser(Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;J)Landroid/content/ContentValues;

    move-result-object v2

    .line 1071
    .local v2, cv:Landroid/content/ContentValues;
    add-int/lit8 v0, v0, 0x1

    .line 1074
    const/16 v3, 0x33

    if-gt v0, v3, :cond_0

    .line 1075
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1082
    .end local v2           #cv:Landroid/content/ContentValues;
    :cond_1
    return-object v1

    .line 1065
    nop

    :pswitch_data_0
    .packed-switch 0x108
        :pswitch_0
    .end packed-switch
.end method

.method private bodyParser()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1134
    const/4 v0, 0x0

    .line 1135
    .local v0, body:Ljava/lang/String;
    :goto_0
    const/16 v1, 0x44a

    invoke-virtual {p0, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->nextTag(I)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 1136
    iget v1, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->tag:I

    packed-switch v1, :pswitch_data_0

    .line 1141
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->skipTag()V

    goto :goto_0

    .line 1138
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 1139
    goto :goto_0

    .line 1146
    :cond_0
    if-nez v0, :cond_1

    const-string v1, ""

    .line 1148
    :goto_1
    return-object v1

    :cond_1
    const-string v1, "\r\n"

    const-string v2, "\n"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 1136
    :pswitch_data_0
    .packed-switch 0x44b
        :pswitch_0
    .end packed-switch
.end method

.method private categoriesParser(Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;)Ljava/lang/String;
    .locals 3
    .parameter "ops"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1044
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1045
    .local v0, categories:Ljava/lang/StringBuilder;
    :goto_0
    const/16 v1, 0x10e

    invoke-virtual {p0, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->nextTag(I)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 1046
    iget v1, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->tag:I

    packed-switch v1, :pswitch_data_0

    .line 1054
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->skipTag()V

    goto :goto_0

    .line 1050
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1051
    const-string v1, "\\"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1057
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1046
    nop

    :pswitch_data_0
    .packed-switch 0x10f
        :pswitch_0
    .end packed-switch
.end method

.method private encodeVisibility(I)I
    .locals 1
    .parameter "easVisibility"

    .prologue
    .line 1010
    const/4 v0, 0x0

    .line 1011
    .local v0, visibility:I
    packed-switch p1, :pswitch_data_0

    .line 1025
    :goto_0
    return v0

    .line 1013
    :pswitch_0
    const/4 v0, 0x0

    .line 1014
    goto :goto_0

    .line 1016
    :pswitch_1
    const/4 v0, 0x3

    .line 1017
    goto :goto_0

    .line 1019
    :pswitch_2
    const/4 v0, 0x2

    .line 1020
    goto :goto_0

    .line 1022
    :pswitch_3
    const/4 v0, 0x1

    goto :goto_0

    .line 1011
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private exceptionParser(Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;Landroid/content/ContentValues;Ljava/util/ArrayList;IIJJ)V
    .locals 17
    .parameter "ops"
    .parameter "parentCv"
    .parameter
    .parameter "reminderMins"
    .parameter "busyStatus"
    .parameter "startTime"
    .parameter "endTime"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;",
            "Landroid/content/ContentValues;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;IIJJ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 882
    .local p3, attendeeValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 883
    .local v4, cv:Landroid/content/ContentValues;
    const-string v3, "calendar_id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$300(Lcom/android/exchange/adapter/CalendarSyncAdapter;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 884
    const-string v3, "_sync_account"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$400(Lcom/android/exchange/adapter/CalendarSyncAdapter;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 885
    const-string v3, "_sync_account_type"

    const-string v5, "com.android.exchange"

    invoke-virtual {v4, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 889
    const-string v3, "organizer"

    const-string v5, "organizer"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 890
    const-string v3, "title"

    const-string v5, "title"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 891
    const-string v3, "description"

    const-string v5, "description"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 892
    const-string v3, "originalAllDay"

    const-string v5, "allDay"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 893
    const-string v3, "eventLocation"

    const-string v5, "eventLocation"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 894
    const-string v3, "visibility"

    const-string v5, "visibility"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 895
    const-string v3, "eventTimezone"

    const-string v5, "eventTimezone"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 897
    const/4 v9, 0x0

    .line 900
    .local v9, allDayEvent:I
    const-string v3, "originalEvent"

    const-string v5, "_sync_id"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 902
    const-string v14, "_noStartTime"

    .line 903
    .local v14, exceptionStartTime:Ljava/lang/String;
    :cond_0
    :goto_0
    const/16 v3, 0x1d

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->nextTag(I)I

    move-result v3

    const/4 v5, 0x3

    if-eq v3, v5, :cond_1

    .line 904
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->tag:I

    move v3, v0

    sparse-switch v3, :sswitch_data_0

    .line 959
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->skipTag()V

    goto :goto_0

    .line 906
    :sswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v14

    .line 907
    const-string v3, "originalInstanceTime"

    invoke-static {v14}, Lcom/android/email/Utility;->parseDateTimeToMillis(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0

    .line 911
    :sswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValueInt()I

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    .line 912
    const-string v3, "eventStatus"

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 916
    :sswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValueInt()I

    move-result v9

    .line 917
    const-string v3, "allDay"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 920
    :sswitch_3
    const-string v3, "description"

    invoke-direct/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->bodyParser()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 923
    :sswitch_4
    const-string v3, "description"

    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 926
    :sswitch_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/email/Utility;->parseDateTimeToMillis(Ljava/lang/String;)J

    move-result-wide p6

    .line 927
    goto :goto_0

    .line 929
    :sswitch_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/email/Utility;->parseDateTimeToMillis(Ljava/lang/String;)J

    move-result-wide p8

    .line 930
    goto :goto_0

    .line 932
    :sswitch_7
    const-string v3, "eventLocation"

    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 935
    :sswitch_8
    invoke-direct/range {p0 .. p1}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->recurrenceParser(Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;)Ljava/lang/String;

    move-result-object v16

    .line 936
    .local v16, rrule:Ljava/lang/String;
    if-eqz v16, :cond_0

    .line 937
    const-string v3, "rrule"

    move-object v0, v4

    move-object v1, v3

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 941
    .end local v16           #rrule:Ljava/lang/String;
    :sswitch_9
    const-string v3, "title"

    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 944
    :sswitch_a
    const-string v3, "visibility"

    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValueInt()I

    move-result v5

    move-object/from16 v0, p0

    move v1, v5

    invoke-direct {v0, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->encodeVisibility(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 947
    :sswitch_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValueInt()I

    move-result p5

    .line 950
    goto/16 :goto_0

    .line 964
    :cond_1
    const-string v3, "_sync_id"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_sync_id"

    move-object/from16 v0, p2

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x5f

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v3, p0

    move-wide/from16 v5, p6

    move-wide/from16 v7, p8

    .line 968
    invoke-virtual/range {v3 .. v9}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->setTimeRelatedValues(Landroid/content/ContentValues;JJI)V

    .line 971
    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->isValidEventValues(Landroid/content/ContentValues;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1007
    .end local v4           #cv:Landroid/content/ContentValues;
    :cond_2
    :goto_1
    return-void

    .line 974
    .restart local v4       #cv:Landroid/content/ContentValues;
    :cond_3
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->mCount:I

    move v13, v0

    .line 975
    .local v13, exceptionStart:I
    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->newException(Landroid/content/ContentValues;)V

    .line 977
    const/4 v12, 0x0

    .line 978
    .local v12, attendeesRedacted:Z
    if-eqz p3, :cond_6

    .line 979
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .end local v4           #cv:Landroid/content/ContentValues;
    .local v15, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/ContentValues;

    .line 981
    .local v10, attValues:Landroid/content/ContentValues;
    const-string v3, "attendeeEmail"

    invoke-virtual {v10, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 985
    .local v11, attendeeEmail:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    move-object v3, v0

    invoke-static {v3}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$400(Lcom/android/exchange/adapter/CalendarSyncAdapter;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 986
    const-string v3, "attendeeStatus"

    invoke-static/range {p5 .. p5}, Lcom/android/exchange/utility/CalendarUtilities;->attendeeStatusFromBusyStatus(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v10, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 989
    move-object/from16 v0, p1

    move-object v1, v10

    move v2, v13

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->newAttendee(Landroid/content/ContentValues;I)V

    goto :goto_2

    .line 990
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->size()I

    move-result v3

    const/16 v4, 0x1f4

    if-ge v3, v4, :cond_5

    .line 991
    move-object/from16 v0, p1

    move-object v1, v10

    move v2, v13

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->newAttendee(Landroid/content/ContentValues;I)V

    goto :goto_2

    .line 993
    :cond_5
    const/4 v12, 0x1

    goto :goto_2

    .line 999
    .end local v10           #attValues:Landroid/content/ContentValues;
    .end local v11           #attendeeEmail:Ljava/lang/String;
    .end local v15           #i$:Ljava/util/Iterator;
    :cond_6
    if-lez p4, :cond_7

    .line 1000
    move-object/from16 v0, p1

    move/from16 v1, p4

    move v2, v13

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->newReminder(II)V

    .line 1003
    :cond_7
    if-eqz v12, :cond_2

    .line 1004
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    move-object v3, v0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "Attendees redacted in this exception"

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    goto :goto_1

    .line 904
    :sswitch_data_0
    .sparse-switch
        0x106 -> :sswitch_2
        0x10b -> :sswitch_4
        0x10d -> :sswitch_b
        0x112 -> :sswitch_6
        0x115 -> :sswitch_1
        0x116 -> :sswitch_0
        0x117 -> :sswitch_7
        0x11b -> :sswitch_8
        0x125 -> :sswitch_a
        0x126 -> :sswitch_9
        0x127 -> :sswitch_5
        0x44a -> :sswitch_3
    .end sparse-switch
.end method

.method private exceptionsParser(Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;Landroid/content/ContentValues;Ljava/util/ArrayList;IIJJ)V
    .locals 2
    .parameter "ops"
    .parameter "cv"
    .parameter
    .parameter "reminderMins"
    .parameter "busyStatus"
    .parameter "startTime"
    .parameter "endTime"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;",
            "Landroid/content/ContentValues;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;IIJJ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1031
    .local p3, attendeeValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :goto_0
    const/16 v0, 0x114

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 1032
    iget v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->tag:I

    packed-switch v0, :pswitch_data_0

    .line 1038
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->skipTag()V

    goto :goto_0

    .line 1034
    :pswitch_0
    invoke-direct/range {p0 .. p9}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->exceptionParser(Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;Landroid/content/ContentValues;Ljava/util/ArrayList;IIJJ)V

    goto :goto_0

    .line 1041
    :cond_0
    return-void

    .line 1032
    nop

    :pswitch_data_0
    .packed-switch 0x113
        :pswitch_0
    .end packed-switch
.end method

.method private getCalendarUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3
    .parameter "uri"

    .prologue
    .line 332
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "_sync_account"

    iget-object v2, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v2, v2, Lcom/android/email/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "_sync_account_type"

    const-string v2, "com.android.exchange"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private getClientIdCursor(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .parameter "clientId"

    .prologue
    .line 1173
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mBindArgument:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 1174
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mAccountUri:Landroid/net/Uri;

    invoke-static {}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$800()[Ljava/lang/String;

    move-result-object v2

    const-string v3, "_sync_local_id=?"

    iget-object v4, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mBindArgument:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private getServerIdCursor(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .parameter "serverId"

    .prologue
    .line 1168
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mAccountUri:Landroid/net/Uri;

    invoke-static {}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$800()[Ljava/lang/String;

    move-result-object v2

    const-string v3, "_sync_id=? AND originalEvent ISNULL AND calendar_id=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    invoke-static {v6}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$900(Lcom/android/exchange/adapter/CalendarSyncAdapter;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private logEventColumns(Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 6
    .parameter "cv"
    .parameter "reason"

    .prologue
    .line 789
    sget-boolean v3, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v3, :cond_1

    .line 790
    new-instance v2, Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Event invalid, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", skipping: Columns = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 792
    .local v2, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 793
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 794
    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 796
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "EasCalendarSyncAdapter"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v3}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->userLog([Ljava/lang/String;)V

    .line 798
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #sb:Ljava/lang/StringBuilder;
    :cond_1
    return-void
.end method

.method private recurrenceParser(Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;)Ljava/lang/String;
    .locals 10
    .parameter "ops"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 835
    const/4 v0, -0x1

    .line 836
    .local v0, type:I
    const/4 v1, -0x1

    .line 837
    .local v1, occurrences:I
    const/4 v2, -0x1

    .line 838
    .local v2, interval:I
    const/4 v3, -0x1

    .line 839
    .local v3, dow:I
    const/4 v4, -0x1

    .line 840
    .local v4, dom:I
    const/4 v5, -0x1

    .line 841
    .local v5, wom:I
    const/4 v6, -0x1

    .line 842
    .local v6, moy:I
    const/4 v7, 0x0

    .line 844
    .local v7, until:Ljava/lang/String;
    :goto_0
    const/16 v8, 0x11b

    invoke-virtual {p0, v8}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->nextTag(I)I

    move-result v8

    const/4 v9, 0x3

    if-eq v8, v9, :cond_0

    .line 845
    iget v8, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->tag:I

    packed-switch v8, :pswitch_data_0

    .line 871
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->skipTag()V

    goto :goto_0

    .line 847
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValueInt()I

    move-result v0

    .line 848
    goto :goto_0

    .line 850
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValueInt()I

    move-result v2

    .line 851
    goto :goto_0

    .line 853
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValueInt()I

    move-result v1

    .line 854
    goto :goto_0

    .line 856
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValueInt()I

    move-result v3

    .line 857
    goto :goto_0

    .line 859
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValueInt()I

    move-result v4

    .line 860
    goto :goto_0

    .line 862
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValueInt()I

    move-result v5

    .line 863
    goto :goto_0

    .line 865
    :pswitch_6
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValueInt()I

    move-result v6

    .line 866
    goto :goto_0

    .line 868
    :pswitch_7
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v7

    .line 869
    goto :goto_0

    .line 875
    :cond_0
    invoke-static/range {v0 .. v7}, Lcom/android/exchange/utility/CalendarUtilities;->rruleFromRecurrence(IIIIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 845
    nop

    :pswitch_data_0
    .packed-switch 0x11c
        :pswitch_0
        :pswitch_7
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private subCommit()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 1267
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    invoke-static {v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$1000(Lcom/android/exchange/adapter/CalendarSyncAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 1270
    .local v1, eventId:J
    :try_start_0
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mContext:Landroid/content/Context;

    const/16 v3, 0x20

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-static/range {v0 .. v5}, Lcom/android/exchange/utility/CalendarUtilities;->createMessageForEventId(Landroid/content/Context;JILjava/lang/String;Lcom/android/email/provider/EmailContent$Account;)Lcom/android/email/provider/EmailContent$Message;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 1278
    .local v9, msg:Lcom/android/email/provider/EmailContent$Message;
    if-eqz v9, :cond_0

    .line 1279
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v3, v3, Lcom/android/email/provider/EmailContent$Account;->mId:J

    invoke-static {v0, v3, v4, v9}, Lcom/android/exchange/EasOutboxService;->sendMessage(Landroid/content/Context;JLcom/android/email/provider/EmailContent$Message;)V

    goto :goto_0

    .line 1273
    .end local v9           #msg:Lcom/android/email/provider/EmailContent$Message;
    :catch_0
    move-exception v0

    move-object v7, v0

    .line 1275
    .local v7, e:Landroid/os/RemoteException;
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "subCommit jsl 2: "

    aput-object v3, v0, v11

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->userLog([Ljava/lang/String;)V

    goto :goto_0

    .line 1283
    .end local v1           #eventId:J
    .end local v7           #e:Landroid/os/RemoteException;
    :cond_1
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mOps:Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;

    invoke-virtual {v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->execute()V

    .line 1285
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mOps:Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;

    invoke-static {v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->access$1100(Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;)[Landroid/content/ContentProviderResult;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1287
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    invoke-static {v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$1200(Lcom/android/exchange/adapter/CalendarSyncAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1288
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 1289
    .local v6, cv:Landroid/content/ContentValues;
    const-string v0, "_sync_dirty"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v6, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1290
    const-string v0, "_sync_mark"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v6, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1291
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    invoke-static {v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$1200(Lcom/android/exchange/adapter/CalendarSyncAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 1292
    .restart local v1       #eventId:J
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$700()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3, v6, v10, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    .line 1297
    .end local v1           #eventId:J
    .end local v6           #cv:Landroid/content/ContentValues;
    :cond_2
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    invoke-static {v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$1300(Lcom/android/exchange/adapter/CalendarSyncAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1298
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    invoke-static {v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$1300(Lcom/android/exchange/adapter/CalendarSyncAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 1299
    .restart local v1       #eventId:J
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$700()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3, v10, v10}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_2

    .line 1304
    .end local v1           #eventId:J
    :cond_3
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    invoke-static {v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$1400(Lcom/android/exchange/adapter/CalendarSyncAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/email/provider/EmailContent$Message;

    .line 1305
    .restart local v9       #msg:Lcom/android/email/provider/EmailContent$Message;
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v3, v3, Lcom/android/email/provider/EmailContent$Account;->mId:J

    invoke-static {v0, v3, v4, v9}, Lcom/android/exchange/EasOutboxService;->sendMessage(Landroid/content/Context;JLcom/android/email/provider/EmailContent$Message;)V

    goto :goto_3

    .line 1307
    .end local v9           #msg:Lcom/android/email/provider/EmailContent$Message;
    :cond_4
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mOps:Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;

    invoke-static {v0, v10}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->access$1102(Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;[Landroid/content/ContentProviderResult;)[Landroid/content/ContentProviderResult;

    .line 1309
    :cond_5
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mOps:Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;

    invoke-virtual {v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->clear()V

    .line 1310
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mOps:Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;

    iput v11, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->mCount:I

    .line 1311
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mOps:Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;

    invoke-static {v0, v11}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->access$1502(Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;I)I

    .line 1312
    return-void
.end method


# virtual methods
.method public addEvent(Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;Ljava/lang/String;Z)V
    .locals 60
    .parameter "ops"
    .parameter "serverId"
    .parameter "update"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 453
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 454
    .local v13, cv:Landroid/content/ContentValues;
    const-string v5, "calendar_id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    move-object v6, v0

    invoke-static {v6}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$300(Lcom/android/exchange/adapter/CalendarSyncAdapter;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v13, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 455
    const-string v5, "_sync_account"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    move-object v6, v0

    invoke-static {v6}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$400(Lcom/android/exchange/adapter/CalendarSyncAdapter;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v13, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    const-string v5, "_sync_account_type"

    const-string v6, "com.android.exchange"

    invoke-virtual {v13, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    const-string v5, "_sync_id"

    move-object v0, v13

    move-object v1, v5

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    const-string v5, "hasAttendeeData"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v13, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 459
    const-string v5, "_sync_local_id"

    const-string v6, "0"

    invoke-virtual {v13, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    const/16 v27, 0x0

    .line 462
    .local v27, allDayEvent:I
    const/4 v9, 0x0

    .line 463
    .local v9, organizerName:Ljava/lang/String;
    const/4 v10, 0x0

    .line 464
    .local v10, organizerEmail:Ljava/lang/String;
    const/16 v48, -0x1

    .line 465
    .local v48, eventOffset:I
    const/16 v45, -0x1

    .line 466
    .local v45, deleteOffset:I
    const/16 v16, 0x1

    .line 468
    .local v16, busyStatus:I
    const/16 v49, 0x1

    .line 469
    .local v49, firstTag:Z
    const-wide/16 v7, -0x1

    .line 470
    .local v7, eventId:J
    const-wide/16 v17, -0x1

    .line 471
    .local v17, startTime:J
    const-wide/16 v19, -0x1

    .line 472
    .local v19, endTime:J
    const/16 v59, 0x0

    .line 475
    .local v59, timeZone:Ljava/util/TimeZone;
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 476
    .local v14, attendeeValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    const/4 v15, -0x1

    .line 477
    .local v15, reminderMins:I
    const/16 v47, 0x0

    .line 478
    .local v47, dtStamp:Ljava/lang/String;
    const/16 v55, 0x0

    .line 480
    .local v55, organizerAdded:Z
    :cond_0
    :goto_0
    const/16 v5, 0x1d

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->nextTag(I)I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_a

    .line 481
    if-eqz p3, :cond_6

    if-eqz v49, :cond_6

    .line 483
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getServerIdCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v41

    .line 484
    .local v41, c:Landroid/database/Cursor;
    const-wide/16 v52, -0x1

    .line 486
    .local v52, id:J
    :try_start_0
    invoke-interface/range {v41 .. v41}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 487
    const/4 v5, 0x0

    move-object/from16 v0, v41

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v52

    .line 490
    :cond_1
    invoke-interface/range {v41 .. v41}, Landroid/database/Cursor;->close()V

    .line 492
    const-wide/16 v5, 0x0

    cmp-long v5, v52, v5

    if-lez v5, :cond_5

    .line 494
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->tag:I

    move v5, v0

    const/16 v6, 0x111

    if-ne v5, v6, :cond_2

    .line 495
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v47

    .line 496
    goto :goto_0

    .line 490
    :catchall_0
    move-exception v5

    invoke-interface/range {v41 .. v41}, Landroid/database/Cursor;->close()V

    throw v5

    .line 497
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->tag:I

    move v5, v0

    const/16 v6, 0x107

    if-ne v5, v6, :cond_4

    .line 499
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mBindArgument:[Ljava/lang/String;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-static/range {v52 .. v53}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    .end local v7           #eventId:J
    aput-object v7, v5, v6

    .line 500
    invoke-static {}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$500()Landroid/net/Uri;

    move-result-object v5

    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const-string v6, "event_id=? AND attendeeRelationship!=2"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mBindArgument:[Ljava/lang/String;

    move-object v7, v0

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->add(Landroid/content/ContentProviderOperation;)Z

    .line 503
    move-wide/from16 v7, v52

    .line 522
    .end local v41           #c:Landroid/database/Cursor;
    .end local v52           #id:J
    .restart local v7       #eventId:J
    :cond_3
    :goto_1
    const/16 v49, 0x0

    .line 523
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->tag:I

    move v5, v0

    sparse-switch v5, :sswitch_data_0

    .line 622
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->skipTag()V

    goto/16 :goto_0

    .line 506
    .restart local v41       #c:Landroid/database/Cursor;
    .restart local v52       #id:J
    :cond_4
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v11, "Changing (delete/add) event "

    aput-object v11, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->userLog([Ljava/lang/String;)V

    .line 507
    move-object/from16 v0, p1

    move-wide/from16 v1, v52

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->newDelete(JLjava/lang/String;)I

    move-result v45

    .line 510
    invoke-static {}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$600()Landroid/content/ContentProviderOperation;

    move-result-object v5

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->newEvent(Landroid/content/ContentProviderOperation;)I

    move-result v48

    goto :goto_1

    .line 514
    :cond_5
    invoke-static {}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$600()Landroid/content/ContentProviderOperation;

    move-result-object v5

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->newEvent(Landroid/content/ContentProviderOperation;)I

    move-result v48

    .line 515
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v11, "EasCalendarSyncAdapter"

    aput-object v11, v5, v6

    const/4 v6, 0x1

    const-string v11, "Changed item not found; treating as new."

    aput-object v11, v5, v6

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->userLog([Ljava/lang/String;)V

    goto :goto_1

    .line 517
    .end local v41           #c:Landroid/database/Cursor;
    .end local v52           #id:J
    :cond_6
    if-eqz v49, :cond_3

    .line 520
    invoke-static {}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$600()Landroid/content/ContentProviderOperation;

    move-result-object v5

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->newEvent(Landroid/content/ContentProviderOperation;)I

    move-result v48

    goto :goto_1

    .line 525
    :sswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValueInt()I

    move-result v27

    .line 526
    if-eqz v27, :cond_8

    if-eqz v59, :cond_8

    .line 529
    new-instance v42, Ljava/util/GregorianCalendar;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$100(Lcom/android/exchange/adapter/CalendarSyncAdapter;)Ljava/util/TimeZone;

    move-result-object v5

    move-object/from16 v0, v42

    move-object v1, v5

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 530
    .local v42, cal:Ljava/util/GregorianCalendar;
    move-object/from16 v0, v42

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 531
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "All-day event arrived in: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual/range {v59 .. v59}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v5, v6

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->userLog([Ljava/lang/String;)V

    .line 532
    const/16 v5, 0xb

    move-object/from16 v0, v42

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v5

    if-nez v5, :cond_7

    const/16 v5, 0xc

    move-object/from16 v0, v42

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v5

    if-eqz v5, :cond_8

    .line 534
    :cond_7
    const/16 v27, 0x0

    .line 535
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Not an all-day event locally: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    move-object v12, v0

    invoke-static {v12}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$100(Lcom/android/exchange/adapter/CalendarSyncAdapter;)Ljava/util/TimeZone;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v5, v6

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->userLog([Ljava/lang/String;)V

    .line 538
    .end local v42           #cal:Ljava/util/GregorianCalendar;
    :cond_8
    const-string v5, "allDay"

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v13, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 542
    :sswitch_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v2, v7

    invoke-direct {v0, v1, v2, v3}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->attendeesParser(Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;J)Ljava/util/ArrayList;

    move-result-object v14

    .line 543
    goto/16 :goto_0

    .line 545
    :sswitch_2
    const-string v5, "description"

    invoke-direct/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->bodyParser()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v13, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 548
    :sswitch_3
    const-string v5, "description"

    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v13, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 551
    :sswitch_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/exchange/utility/CalendarUtilities;->tziStringToTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v59

    .line 552
    if-nez v59, :cond_9

    .line 553
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$100(Lcom/android/exchange/adapter/CalendarSyncAdapter;)Ljava/util/TimeZone;

    move-result-object v59

    .line 555
    :cond_9
    const-string v5, "eventTimezone"

    invoke-virtual/range {v59 .. v59}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v13, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 558
    :sswitch_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/email/Utility;->parseDateTimeToMillis(Ljava/lang/String;)J

    move-result-wide v17

    .line 559
    goto/16 :goto_0

    .line 561
    :sswitch_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/email/Utility;->parseDateTimeToMillis(Ljava/lang/String;)J

    move-result-wide v19

    .line 562
    goto/16 :goto_0

    :sswitch_7
    move-object/from16 v5, p0

    move-object/from16 v6, p1

    .line 566
    invoke-direct/range {v5 .. v10}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->addOrganizerToAttendees(Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;JLjava/lang/String;Ljava/lang/String;)V

    .line 567
    const/16 v55, 0x1

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    .line 568
    invoke-direct/range {v11 .. v20}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->exceptionsParser(Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;Landroid/content/ContentValues;Ljava/util/ArrayList;IIJJ)V

    goto/16 :goto_0

    .line 572
    :sswitch_8
    const-string v5, "eventLocation"

    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v13, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 575
    :sswitch_9
    invoke-direct/range {p0 .. p1}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->recurrenceParser(Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;)Ljava/lang/String;

    move-result-object v56

    .line 576
    .local v56, rrule:Ljava/lang/String;
    if-eqz v56, :cond_0

    .line 577
    const-string v5, "rrule"

    move-object v0, v13

    move-object v1, v5

    move-object/from16 v2, v56

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 581
    .end local v56           #rrule:Ljava/lang/String;
    :sswitch_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v10

    .line 582
    const-string v5, "organizer"

    invoke-virtual {v13, v5, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 585
    :sswitch_b
    const-string v5, "title"

    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v13, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 588
    :sswitch_c
    const-string v5, "visibility"

    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValueInt()I

    move-result v6

    move-object/from16 v0, p0

    move v1, v6

    invoke-direct {v0, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->encodeVisibility(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v13, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 591
    :sswitch_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v9

    .line 592
    goto/16 :goto_0

    .line 594
    :sswitch_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValueInt()I

    move-result v15

    .line 595
    move-object/from16 v0, p1

    move v1, v15

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->newReminder(I)V

    .line 596
    const-string v5, "hasAlarm"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v13, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 601
    :sswitch_f
    const-string v5, "_sync_local_id"

    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v13, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 604
    :sswitch_10
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v47

    .line 605
    goto/16 :goto_0

    .line 607
    :sswitch_11
    const-string v5, "meeting_status"

    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->newExtendedProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 613
    :sswitch_12
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValueInt()I

    move-result v16

    .line 614
    goto/16 :goto_0

    .line 616
    :sswitch_13
    invoke-direct/range {p0 .. p1}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->categoriesParser(Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;)Ljava/lang/String;

    move-result-object v43

    .line 617
    .local v43, categories:Ljava/lang/String;
    invoke-virtual/range {v43 .. v43}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 618
    const-string v5, "categories"

    move-object/from16 v0, p1

    move-object v1, v5

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->newExtendedProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v43           #categories:Ljava/lang/String;
    :cond_a
    move-object/from16 v21, p0

    move-object/from16 v22, v13

    move-wide/from16 v23, v17

    move-wide/from16 v25, v19

    .line 627
    invoke-virtual/range {v21 .. v27}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->setTimeRelatedValues(Landroid/content/ContentValues;JJI)V

    .line 630
    if-nez v55, :cond_b

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    .line 631
    invoke-direct/range {v5 .. v10}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->addOrganizerToAttendees(Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;JLjava/lang/String;Ljava/lang/String;)V

    .line 635
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$400(Lcom/android/exchange/adapter/CalendarSyncAdapter;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    .line 641
    .local v58, selfOrganizer:Z
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v54

    .line 642
    .local v54, numAttendees:I
    const/16 v5, 0x32

    move/from16 v0, v54

    move v1, v5

    if-le v0, v1, :cond_12

    .line 648
    const-wide/16 v5, 0x0

    cmp-long v5, v7, v5

    if-gez v5, :cond_11

    .line 649
    const-string v5, "attendeesRedacted"

    const-string v6, "1"

    move-object/from16 v0, p1

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->newExtendedProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    if-eqz v58, :cond_c

    .line 651
    const-string v5, "upsyncProhibited"

    const-string v6, "1"

    move-object/from16 v0, p1

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->newExtendedProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    :cond_c
    :goto_2
    if-eqz v58, :cond_d

    .line 661
    const-string v10, "upload_disallowed@uploadisdisallowed.aaa"

    .line 662
    const-string v5, "organizer"

    invoke-virtual {v13, v5, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    :cond_d
    const-string v5, "hasAttendeeData"

    const-string v6, "0"

    invoke-virtual {v13, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    move-object v5, v0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "Maximum number of attendees exceeded; redacting"

    .end local v7           #eventId:J
    aput-object v8, v6, v7

    invoke-virtual {v5, v6}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 756
    :cond_e
    :goto_3
    if-ltz v48, :cond_10

    .line 758
    if-eqz v47, :cond_f

    .line 759
    const-string v5, "dtstamp"

    move-object/from16 v0, p1

    move-object v1, v5

    move-object/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->newExtendedProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    :cond_f
    move-object/from16 v0, p0

    move-object v1, v13

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->isValidEventValues(Landroid/content/ContentValues;)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 763
    invoke-static {}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$700()Landroid/net/Uri;

    move-result-object v5

    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    invoke-virtual {v5, v13}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    move-object/from16 v0, p1

    move/from16 v1, v48

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 786
    :cond_10
    :goto_4
    return-void

    .line 654
    .restart local v7       #eventId:J
    :cond_11
    const-string v5, "attendeesRedacted"

    const-string v6, "1"

    move-object/from16 v0, p1

    move-object v1, v5

    move-object v2, v6

    move-wide v3, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->updatedExtendedProperty(Ljava/lang/String;Ljava/lang/String;J)V

    .line 655
    if-eqz v58, :cond_c

    .line 656
    const-string v5, "upsyncProhibited"

    const-string v6, "1"

    move-object/from16 v0, p1

    move-object v1, v5

    move-object v2, v6

    move-wide v3, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->updatedExtendedProperty(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_2

    .line 667
    :cond_12
    if-lez v54, :cond_e

    .line 668
    new-instance v57, Ljava/lang/StringBuilder;

    invoke-direct/range {v57 .. v57}, Ljava/lang/StringBuilder;-><init>()V

    .line 669
    .local v57, sb:Ljava/lang/StringBuilder;
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v51

    .local v51, i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface/range {v51 .. v51}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_18

    invoke-interface/range {v51 .. v51}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/content/ContentValues;

    .line 670
    .local v34, attendee:Landroid/content/ContentValues;
    const-string v5, "attendeeEmail"

    move-object/from16 v0, v34

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 671
    .local v35, attendeeEmail:Ljava/lang/String;
    move-object/from16 v0, v57

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 672
    const-string v5, "\\"

    move-object/from16 v0, v57

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 677
    invoke-static/range {v16 .. v16}, Lcom/android/exchange/utility/CalendarUtilities;->attendeeStatusFromBusyStatus(I)I

    move-result v39

    .line 681
    .local v39, attendeeStatusFromBusy:I
    if-eqz v58, :cond_16

    .line 692
    if-eqz v10, :cond_13

    move-object v0, v10

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_14

    .line 694
    :cond_13
    const-wide/16 v5, 0x0

    cmp-long v5, v7, v5

    if-gez v5, :cond_15

    .line 695
    const-string v5, "userAttendeeStatus"

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->newExtendedProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 737
    :cond_14
    :goto_6
    const-wide/16 v5, 0x0

    cmp-long v5, v7, v5

    if-gez v5, :cond_17

    .line 738
    move-object/from16 v0, p1

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->newAttendee(Landroid/content/ContentValues;)V

    goto :goto_5

    .line 698
    :cond_15
    const-string v5, "userAttendeeStatus"

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    move-object v1, v5

    move-object v2, v6

    move-wide v3, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->updatedExtendedProperty(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_6

    .line 709
    :cond_16
    const-string v5, "@"

    move-object/from16 v0, v35

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 711
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$400(Lcom/android/exchange/adapter/CalendarSyncAdapter;)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x40

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v32

    .line 712
    .local v32, atSignIndex1:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$400(Lcom/android/exchange/adapter/CalendarSyncAdapter;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object v0, v5

    move v1, v6

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v31

    .line 713
    .local v31, accountUserName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$400(Lcom/android/exchange/adapter/CalendarSyncAdapter;)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v6, v32, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v30

    .line 714
    .local v30, accountServerName:Ljava/lang/String;
    const/16 v5, 0x40

    move-object/from16 v0, v35

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v33

    .line 715
    .local v33, atSignIndex2:I
    const/4 v5, 0x0

    move-object/from16 v0, v35

    move v1, v5

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v40

    .line 716
    .local v40, attendeeUserName:Ljava/lang/String;
    add-int/lit8 v5, v33, 0x1

    move-object/from16 v0, v35

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v38

    .line 718
    .local v38, attendeeServerName:Ljava/lang/String;
    move-object/from16 v0, v31

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 719
    const-string v46, "\\."

    .line 724
    .local v46, delimiter:Ljava/lang/String;
    move-object/from16 v0, v30

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v28

    .line 725
    .local v28, accountServer:[Ljava/lang/String;
    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v29, v0

    .line 726
    .local v29, accountServerLen:I
    move-object/from16 v0, v38

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v36

    .line 727
    .local v36, attendeeServer:[Ljava/lang/String;
    move-object/from16 v0, v36

    array-length v0, v0

    move/from16 v37, v0

    .line 729
    .local v37, attendeeServerLen:I
    const/4 v5, 0x2

    move/from16 v0, v29

    move v1, v5

    if-lt v0, v1, :cond_14

    const/4 v5, 0x2

    move/from16 v0, v37

    move v1, v5

    if-lt v0, v1, :cond_14

    .line 730
    const/4 v5, 0x1

    sub-int v5, v29, v5

    aget-object v5, v28, v5

    const/4 v6, 0x1

    sub-int v6, v37, v6

    aget-object v6, v36, v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 731
    const/4 v5, 0x2

    sub-int v5, v29, v5

    aget-object v5, v28, v5

    const/4 v6, 0x2

    sub-int v6, v37, v6

    aget-object v6, v36, v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 732
    const-string v5, "attendeeStatus"

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v34

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_6

    .line 740
    .end local v28           #accountServer:[Ljava/lang/String;
    .end local v29           #accountServerLen:I
    .end local v30           #accountServerName:Ljava/lang/String;
    .end local v31           #accountUserName:Ljava/lang/String;
    .end local v32           #atSignIndex1:I
    .end local v33           #atSignIndex2:I
    .end local v36           #attendeeServer:[Ljava/lang/String;
    .end local v37           #attendeeServerLen:I
    .end local v38           #attendeeServerName:Ljava/lang/String;
    .end local v40           #attendeeUserName:Ljava/lang/String;
    .end local v46           #delimiter:Ljava/lang/String;
    :cond_17
    move-object/from16 v0, p1

    move-object/from16 v1, v34

    move-wide v2, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->updatedAttendee(Landroid/content/ContentValues;J)V

    goto/16 :goto_5

    .line 743
    .end local v34           #attendee:Landroid/content/ContentValues;
    .end local v35           #attendeeEmail:Ljava/lang/String;
    .end local v39           #attendeeStatusFromBusy:I
    :cond_18
    const-wide/16 v5, 0x0

    cmp-long v5, v7, v5

    if-gez v5, :cond_19

    .line 744
    const-string v5, "attendees"

    invoke-virtual/range {v57 .. v57}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->newExtendedProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    const-string v5, "attendeesRedacted"

    const-string v6, "0"

    move-object/from16 v0, p1

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->newExtendedProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    const-string v5, "upsyncProhibited"

    const-string v6, "0"

    move-object/from16 v0, p1

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->newExtendedProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 748
    :cond_19
    const-string v5, "attendees"

    invoke-virtual/range {v57 .. v57}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    move-object v1, v5

    move-object v2, v6

    move-wide v3, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->updatedExtendedProperty(Ljava/lang/String;Ljava/lang/String;J)V

    .line 750
    const-string v5, "attendeesRedacted"

    const-string v6, "0"

    move-object/from16 v0, p1

    move-object v1, v5

    move-object v2, v6

    move-wide v3, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->updatedExtendedProperty(Ljava/lang/String;Ljava/lang/String;J)V

    .line 751
    const-string v5, "upsyncProhibited"

    const-string v6, "0"

    move-object/from16 v0, p1

    move-object v1, v5

    move-object v2, v6

    move-wide v3, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->updatedExtendedProperty(Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_3

    .line 768
    .end local v7           #eventId:J
    .end local v51           #i$:Ljava/util/Iterator;
    .end local v57           #sb:Ljava/lang/StringBuilder;
    :cond_1a
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->mCount:I

    move v5, v0

    sub-int v44, v5, v48

    .line 769
    .local v44, cnt:I
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "EasCalendarSyncAdapter"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Removing "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " inserts from mOps"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->userLog([Ljava/lang/String;)V

    .line 770
    const/16 v50, 0x0

    .local v50, i:I
    :goto_7
    move/from16 v0, v50

    move/from16 v1, v44

    if-ge v0, v1, :cond_1b

    .line 771
    move-object/from16 v0, p1

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->remove(I)Ljava/lang/Object;

    .line 770
    add-int/lit8 v50, v50, 0x1

    goto :goto_7

    .line 773
    :cond_1b
    move/from16 v0, v48

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->mCount:I

    .line 776
    if-ltz v45, :cond_10

    .line 778
    move-object/from16 v0, p1

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->remove(I)Ljava/lang/Object;

    .line 780
    move-object/from16 v0, p1

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->remove(I)Ljava/lang/Object;

    .line 781
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "EasCalendarSyncAdapter"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "Removing deletion ops from mOps"

    aput-object v7, v5, v6

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->userLog([Ljava/lang/String;)V

    .line 782
    move/from16 v0, v45

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->mCount:I

    goto/16 :goto_4

    .line 523
    nop

    :sswitch_data_0
    .sparse-switch
        0x105 -> :sswitch_4
        0x106 -> :sswitch_0
        0x107 -> :sswitch_1
        0x10b -> :sswitch_3
        0x10d -> :sswitch_12
        0x10e -> :sswitch_13
        0x111 -> :sswitch_10
        0x112 -> :sswitch_6
        0x114 -> :sswitch_7
        0x117 -> :sswitch_8
        0x118 -> :sswitch_11
        0x119 -> :sswitch_a
        0x11a -> :sswitch_d
        0x11b -> :sswitch_9
        0x124 -> :sswitch_e
        0x125 -> :sswitch_c
        0x126 -> :sswitch_b
        0x127 -> :sswitch_5
        0x128 -> :sswitch_f
        0x44a -> :sswitch_2
    .end sparse-switch
.end method

.method public addParser(Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;)V
    .locals 3
    .parameter "ops"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1152
    const/4 v0, 0x0

    .line 1153
    .local v0, serverId:Ljava/lang/String;
    :goto_0
    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->nextTag(I)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 1154
    iget v1, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->tag:I

    sparse-switch v1, :sswitch_data_0

    .line 1162
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->skipTag()V

    goto :goto_0

    .line 1156
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 1157
    goto :goto_0

    .line 1159
    :sswitch_1
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->addEvent(Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;Ljava/lang/String;Z)V

    goto :goto_0

    .line 1165
    :cond_0
    return-void

    .line 1154
    nop

    :sswitch_data_0
    .sparse-switch
        0xd -> :sswitch_0
        0x1d -> :sswitch_1
    .end sparse-switch
.end method

.method public addResponsesParser()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1366
    const/4 v5, 0x0

    .line 1367
    .local v5, serverId:Ljava/lang/String;
    const/4 v1, 0x0

    .line 1368
    .local v1, clientId:Ljava/lang/String;
    const/4 v6, -0x1

    .line 1369
    .local v6, status:I
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1370
    .local v2, cv:Landroid/content/ContentValues;
    :cond_0
    :goto_0
    const/4 v7, 0x7

    invoke-virtual {p0, v7}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->nextTag(I)I

    move-result v7

    const/4 v8, 0x3

    if-eq v7, v8, :cond_1

    .line 1371
    iget v7, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->tag:I

    packed-switch v7, :pswitch_data_0

    .line 1385
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->skipTag()V

    goto :goto_0

    .line 1373
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 1374
    goto :goto_0

    .line 1376
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 1377
    goto :goto_0

    .line 1379
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValueInt()I

    move-result v6

    .line 1380
    if-eq v6, v11, :cond_0

    .line 1381
    new-array v7, v11, [Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Attempt to add event failed with status: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-virtual {p0, v7}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->userLog([Ljava/lang/String;)V

    goto :goto_0

    .line 1389
    :cond_1
    if-nez v1, :cond_2

    .line 1411
    :goto_1
    return-void

    .line 1390
    :cond_2
    if-nez v5, :cond_3

    .line 1392
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FAIL:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1395
    :cond_3
    invoke-direct {p0, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getClientIdCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1397
    .local v0, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1398
    const-string v7, "_sync_id"

    invoke-virtual {v2, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1399
    const-string v7, "_sync_local_id"

    invoke-virtual {v2, v7, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1400
    const/4 v7, 0x0

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 1402
    .local v3, id:J
    iget-object v7, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mOps:Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;

    invoke-static {}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$700()Landroid/net/Uri;

    move-result-object v8

    invoke-static {v8, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    invoke-static {v8}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->add(Landroid/content/ContentProviderOperation;)Z

    .line 1406
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "New event "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " was given serverId: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {p0, v7}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->userLog([Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1409
    .end local v3           #id:J
    :cond_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v7

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v7

    .line 1371
    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public changeParser(Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;)V
    .locals 6
    .parameter "ops"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 1208
    const/4 v0, 0x0

    .line 1209
    .local v0, serverId:Ljava/lang/String;
    :goto_0
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->nextTag(I)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 1210
    iget v1, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->tag:I

    sparse-switch v1, :sswitch_data_0

    .line 1219
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->skipTag()V

    goto :goto_0

    .line 1212
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 1213
    goto :goto_0

    .line 1215
    :sswitch_1
    new-array v1, v5, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Changing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->userLog([Ljava/lang/String;)V

    .line 1216
    invoke-virtual {p0, p1, v0, v5}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->addEvent(Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;Ljava/lang/String;Z)V

    goto :goto_0

    .line 1222
    :cond_0
    return-void

    .line 1210
    nop

    :sswitch_data_0
    .sparse-switch
        0xd -> :sswitch_0
        0x1d -> :sswitch_1
    .end sparse-switch
.end method

.method public changeResponsesParser()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1414
    const/4 v0, 0x0

    .line 1415
    .local v0, serverId:Ljava/lang/String;
    const/4 v1, 0x0

    .line 1416
    .local v1, status:Ljava/lang/String;
    :goto_0
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->nextTag(I)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    .line 1417
    iget v2, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->tag:I

    packed-switch v2, :pswitch_data_0

    .line 1425
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->skipTag()V

    goto :goto_0

    .line 1419
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 1420
    goto :goto_0

    .line 1422
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 1423
    goto :goto_0

    .line 1428
    :cond_0
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 1429
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Changed event "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " failed with status: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->userLog([Ljava/lang/String;)V

    .line 1431
    :cond_1
    return-void

    .line 1417
    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public commandsParser()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1226
    :cond_0
    :goto_0
    const/16 v0, 0x16

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5

    .line 1227
    iget v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->tag:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 1228
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mOps:Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->addParser(Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;)V

    .line 1229
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    invoke-virtual {v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->incrementChangeCount()V

    .line 1255
    :goto_1
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mOps:Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;

    invoke-virtual {v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->size()I

    move-result v0

    const/16 v1, 0x763

    if-le v0, v1, :cond_0

    .line 1256
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "commandsParser subCommit() "

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->userLog([Ljava/lang/String;)V

    .line 1257
    invoke-direct {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->subCommit()V

    goto :goto_0

    .line 1230
    :cond_1
    iget v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->tag:I

    const/16 v1, 0x9

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->tag:I

    const/16 v1, 0x21

    if-ne v0, v1, :cond_3

    .line 1231
    :cond_2
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mOps:Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->deleteParser(Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;)V

    .line 1232
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    invoke-virtual {v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->incrementChangeCount()V

    goto :goto_1

    .line 1233
    :cond_3
    iget v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->tag:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_4

    .line 1234
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mOps:Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->changeParser(Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;)V

    .line 1235
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    invoke-virtual {v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->incrementChangeCount()V

    goto :goto_1

    .line 1237
    :cond_4
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->skipTag()V

    goto :goto_1

    .line 1260
    :cond_5
    return-void
.end method

.method public commit()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 1316
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "Calendar SyncKey saved as: "

    aput-object v3, v0, v11

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-object v4, v4, Lcom/android/email/provider/EmailContent$Mailbox;->mSyncKey:Ljava/lang/String;

    aput-object v4, v0, v3

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->userLog([Ljava/lang/String;)V

    .line 1318
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mOps:Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;

    sget-object v3, Landroid/provider/Calendar$SyncState;->CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    iget-object v4, v4, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mAccountManagerAccount:Landroid/accounts/Account;

    iget-object v5, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-object v5, v5, Lcom/android/email/provider/EmailContent$Mailbox;->mSyncKey:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/provider/SyncStateContract$Helpers;->newSetOperation(Landroid/net/Uri;Landroid/accounts/Account;[B)Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->add(Landroid/content/ContentProviderOperation;)Z

    .line 1322
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    invoke-static {v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$1000(Lcom/android/exchange/adapter/CalendarSyncAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 1325
    .local v1, eventId:J
    :try_start_0
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mContext:Landroid/content/Context;

    const/16 v3, 0x20

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-static/range {v0 .. v5}, Lcom/android/exchange/utility/CalendarUtilities;->createMessageForEventId(Landroid/content/Context;JILjava/lang/String;Lcom/android/email/provider/EmailContent$Account;)Lcom/android/email/provider/EmailContent$Message;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 1332
    .local v9, msg:Lcom/android/email/provider/EmailContent$Message;
    if-eqz v9, :cond_0

    .line 1333
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v3, v3, Lcom/android/email/provider/EmailContent$Account;->mId:J

    invoke-static {v0, v3, v4, v9}, Lcom/android/exchange/EasOutboxService;->sendMessage(Landroid/content/Context;JLcom/android/email/provider/EmailContent$Message;)V

    goto :goto_0

    .line 1328
    .end local v9           #msg:Lcom/android/email/provider/EmailContent$Message;
    :catch_0
    move-exception v0

    move-object v7, v0

    .line 1330
    .local v7, e:Landroid/os/RemoteException;
    goto :goto_0

    .line 1338
    .end local v1           #eventId:J
    .end local v7           #e:Landroid/os/RemoteException;
    :cond_1
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mOps:Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;

    invoke-virtual {v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->execute()V

    .line 1340
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mOps:Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;

    invoke-static {v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->access$1100(Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;)[Landroid/content/ContentProviderResult;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1342
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    invoke-static {v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$1200(Lcom/android/exchange/adapter/CalendarSyncAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1343
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 1344
    .local v6, cv:Landroid/content/ContentValues;
    const-string v0, "_sync_dirty"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v6, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1345
    const-string v0, "_sync_mark"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v6, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1346
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    invoke-static {v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$1200(Lcom/android/exchange/adapter/CalendarSyncAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 1347
    .restart local v1       #eventId:J
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$700()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3, v6, v10, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    .line 1352
    .end local v1           #eventId:J
    .end local v6           #cv:Landroid/content/ContentValues;
    :cond_2
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    invoke-static {v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$1300(Lcom/android/exchange/adapter/CalendarSyncAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1353
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    invoke-static {v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$1300(Lcom/android/exchange/adapter/CalendarSyncAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 1354
    .restart local v1       #eventId:J
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$700()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3, v10, v10}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_2

    .line 1359
    .end local v1           #eventId:J
    :cond_3
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    invoke-static {v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$1400(Lcom/android/exchange/adapter/CalendarSyncAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/email/provider/EmailContent$Message;

    .line 1360
    .restart local v9       #msg:Lcom/android/email/provider/EmailContent$Message;
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v3, v3, Lcom/android/email/provider/EmailContent$Account;->mId:J

    invoke-static {v0, v3, v4, v9}, Lcom/android/exchange/EasOutboxService;->sendMessage(Landroid/content/Context;JLcom/android/email/provider/EmailContent$Message;)V

    goto :goto_3

    .line 1363
    .end local v9           #msg:Lcom/android/email/provider/EmailContent$Message;
    :cond_4
    return-void
.end method

.method public deleteParser(Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;)V
    .locals 5
    .parameter "ops"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1179
    :goto_0
    const/16 v2, 0x9

    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->nextTag(I)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    .line 1180
    iget v2, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->tag:I

    packed-switch v2, :pswitch_data_0

    .line 1195
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->skipTag()V

    goto :goto_0

    .line 1182
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 1184
    .local v1, serverId:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getServerIdCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1186
    .local v0, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1187
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "Deleting "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->userLog([Ljava/lang/String;)V

    .line 1188
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->delete(JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1191
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v2

    .line 1198
    .end local v0           #c:Landroid/database/Cursor;
    .end local v1           #serverId:Ljava/lang/String;
    :cond_1
    return-void

    .line 1180
    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
    .end packed-switch
.end method

.method isValidEventValues(Landroid/content/ContentValues;)Z
    .locals 8
    .parameter "cv"

    .prologue
    const/4 v4, 0x0

    const-string v7, "duration"

    const-string v6, "dtend"

    const-string v5, "allDay"

    .line 801
    const-string v3, "originalInstanceTime"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    .line 803
    .local v2, isException:Z
    const-string v3, "dtstart"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 804
    const-string v3, "DTSTART missing"

    invoke-direct {p0, p1, v3}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->logEventColumns(Landroid/content/ContentValues;Ljava/lang/String;)V

    move v3, v4

    .line 830
    :goto_0
    return v3

    .line 807
    :cond_0
    if-nez v2, :cond_1

    const-string v3, "_sync_local_id"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 808
    const-string v3, "_SYNC_DATA missing"

    invoke-direct {p0, p1, v3}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->logEventColumns(Landroid/content/ContentValues;Ljava/lang/String;)V

    move v3, v4

    .line 809
    goto :goto_0

    .line 811
    :cond_1
    if-nez v2, :cond_2

    const-string v3, "dtend"

    invoke-virtual {p1, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "duration"

    invoke-virtual {p1, v7}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 813
    const-string v3, "DTEND/DURATION missing"

    invoke-direct {p0, p1, v3}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->logEventColumns(Landroid/content/ContentValues;Ljava/lang/String;)V

    move v3, v4

    .line 814
    goto :goto_0

    .line 816
    :cond_2
    if-eqz v2, :cond_3

    const-string v3, "dtend"

    invoke-virtual {p1, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 817
    const-string v3, "Exception missing DTEND"

    invoke-direct {p0, p1, v3}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->logEventColumns(Landroid/content/ContentValues;Ljava/lang/String;)V

    move v3, v4

    .line 818
    goto :goto_0

    .line 820
    :cond_3
    const-string v3, "rrule"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 821
    const-string v3, "duration"

    invoke-virtual {p1, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 822
    .local v1, duration:Ljava/lang/String;
    if-nez v1, :cond_4

    move v3, v4

    goto :goto_0

    .line 823
    :cond_4
    const-string v3, "allDay"

    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 824
    const-string v3, "allDay"

    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 825
    .local v0, ade:Ljava/lang/Integer;
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "D"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    move v3, v4

    .line 826
    goto :goto_0

    .line 830
    .end local v0           #ade:Ljava/lang/Integer;
    .end local v1           #duration:Ljava/lang/String;
    :cond_5
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public moveResponseParser()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1262
    return-void
.end method

.method public responsesParser()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1437
    :goto_0
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    .line 1438
    iget v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->tag:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 1439
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->addResponsesParser()V

    goto :goto_0

    .line 1440
    :cond_0
    iget v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->tag:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 1441
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->changeResponsesParser()V

    goto :goto_0

    .line 1443
    :cond_1
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->skipTag()V

    goto :goto_0

    .line 1445
    :cond_2
    return-void
.end method

.method setTimeRelatedValues(Landroid/content/ContentValues;JJI)V
    .locals 17
    .parameter "cv"
    .parameter "startTime"
    .parameter "endTime"
    .parameter "allDayEvent"

    .prologue
    .line 380
    const-wide/16 v11, 0x0

    cmp-long v11, p2, v11

    if-gez v11, :cond_0

    .line 449
    :goto_0
    return-void

    .line 383
    :cond_0
    const-wide/16 v11, 0x0

    cmp-long v11, p4, v11

    if-gez v11, :cond_1

    const-wide/32 v11, 0x1b7740

    add-long p4, p2, v11

    .line 386
    :cond_1
    if-eqz p6, :cond_2

    .line 387
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    move-object v11, v0

    invoke-static {v11}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$100(Lcom/android/exchange/adapter/CalendarSyncAdapter;)Ljava/util/TimeZone;

    move-result-object v11

    move-wide/from16 v0, p2

    move-object v2, v11

    invoke-static {v0, v1, v2}, Lcom/android/exchange/utility/CalendarUtilities;->getUtcAllDayCalendarTime(JLjava/util/TimeZone;)J

    move-result-wide p2

    .line 388
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    move-object v11, v0

    invoke-static {v11}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$100(Lcom/android/exchange/adapter/CalendarSyncAdapter;)Ljava/util/TimeZone;

    move-result-object v11

    move-wide/from16 v0, p4

    move-object v2, v11

    invoke-static {v0, v1, v2}, Lcom/android/exchange/utility/CalendarUtilities;->getUtcAllDayCalendarTime(JLjava/util/TimeZone;)J

    move-result-wide p4

    .line 389
    const-string v11, "eventTimezone"

    move-object/from16 v0, p1

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 390
    .local v10, originalTimeZone:Ljava/lang/String;
    const-string v11, "eventTimezone2"

    move-object/from16 v0, p1

    move-object v1, v11

    move-object v2, v10

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    const-string v11, "eventTimezone"

    invoke-static {}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$200()Ljava/util/TimeZone;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p1

    move-object v1, v11

    move-object v2, v12

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    .end local v10           #originalTimeZone:Ljava/lang/String;
    :cond_2
    const-string v11, "originalInstanceTime"

    move-object/from16 v0, p1

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    const-string v11, "originalAllDay"

    move-object/from16 v0, p1

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 398
    const-string v11, "originalAllDay"

    move-object/from16 v0, p1

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .line 399
    .local v3, ade:Ljava/lang/Integer;
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-eqz v11, :cond_6

    .line 400
    const-string v11, "originalInstanceTime"

    move-object/from16 v0, p1

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 401
    .local v5, exceptionTime:J
    new-instance v4, Ljava/util/GregorianCalendar;

    invoke-static {}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$200()Ljava/util/TimeZone;

    move-result-object v11

    invoke-direct {v4, v11}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 404
    .local v4, cal:Ljava/util/GregorianCalendar;
    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "orginal instance time ="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    move-object/from16 v0, p0

    move-object v1, v11

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->userLog([Ljava/lang/String;)V

    .line 405
    invoke-virtual {v4, v5, v6}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 406
    const/16 v11, 0xb

    invoke-virtual {v4, v11}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v11

    if-nez v11, :cond_3

    const/16 v11, 0xc

    invoke-virtual {v4, v11}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v11

    if-nez v11, :cond_3

    const/16 v11, 0xd

    invoke-virtual {v4, v11}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v11

    if-eqz v11, :cond_5

    .line 409
    :cond_3
    const-string v11, "eventTimezone2"

    move-object/from16 v0, p1

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 410
    .local v9, orginalTimezone2:Ljava/lang/String;
    if-nez v9, :cond_4

    .line 411
    const-string v11, "eventTimezone"

    move-object/from16 v0, p1

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 413
    :cond_4
    if-eqz v9, :cond_7

    .line 414
    invoke-static {v9}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v11

    invoke-virtual {v11, v5, v6}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v11

    int-to-long v7, v11

    .line 415
    .local v7, offset:J
    add-long/2addr v5, v7

    .line 416
    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "modified orginal instance time ="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    move-object/from16 v0, p0

    move-object v1, v11

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->userLog([Ljava/lang/String;)V

    .line 418
    invoke-virtual {v4, v5, v6}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 427
    .end local v7           #offset:J
    .end local v9           #orginalTimezone2:Ljava/lang/String;
    :cond_5
    :goto_1
    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "time from calendar ="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v4}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    move-object/from16 v0, p0

    move-object v1, v11

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->userLog([Ljava/lang/String;)V

    .line 430
    const-string v11, "originalInstanceTime"

    invoke-virtual {v4}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    move-object/from16 v0, p1

    move-object v1, v11

    move-object v2, v12

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 435
    .end local v3           #ade:Ljava/lang/Integer;
    .end local v4           #cal:Ljava/util/GregorianCalendar;
    .end local v5           #exceptionTime:J
    :cond_6
    const-string v11, "dtstart"

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    move-object/from16 v0, p1

    move-object v1, v11

    move-object v2, v12

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 437
    const-string v11, "rrule"

    move-object/from16 v0, p1

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 438
    if-eqz p6, :cond_8

    .line 439
    const-string v11, "duration"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "P"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sub-long v13, p4, p2

    const-wide/32 v15, 0x5265c00

    div-long/2addr v13, v15

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "D"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p1

    move-object v1, v11

    move-object v2, v12

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 420
    .restart local v3       #ade:Ljava/lang/Integer;
    .restart local v4       #cal:Ljava/util/GregorianCalendar;
    .restart local v5       #exceptionTime:J
    .restart local v9       #orginalTimezone2:Ljava/lang/String;
    :cond_7
    const/16 v11, 0xb

    const/4 v12, 0x0

    invoke-virtual {v4, v11, v12}, Ljava/util/GregorianCalendar;->set(II)V

    .line 421
    const/16 v11, 0xc

    const/4 v12, 0x0

    invoke-virtual {v4, v11, v12}, Ljava/util/GregorianCalendar;->set(II)V

    .line 422
    const/16 v11, 0xd

    const/4 v12, 0x0

    invoke-virtual {v4, v11, v12}, Ljava/util/GregorianCalendar;->set(II)V

    goto/16 :goto_1

    .line 442
    .end local v3           #ade:Ljava/lang/Integer;
    .end local v4           #cal:Ljava/util/GregorianCalendar;
    .end local v5           #exceptionTime:J
    .end local v9           #orginalTimezone2:Ljava/lang/String;
    :cond_8
    const-string v11, "duration"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "P"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sub-long v13, p4, p2

    const-wide/32 v15, 0xea60

    div-long/2addr v13, v15

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "M"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p1

    move-object v1, v11

    move-object v2, v12

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 446
    :cond_9
    const-string v11, "dtend"

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    move-object/from16 v0, p1

    move-object v1, v11

    move-object v2, v12

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 447
    const-string v11, "lastDate"

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    move-object/from16 v0, p1

    move-object v1, v11

    move-object v2, v12

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_0
.end method

.method public wipe()V
    .locals 13

    .prologue
    const/4 v11, 0x0

    const-string v12, "EasCalendarSyncAdapter"

    .line 304
    const-string v8, "EasCalendarSyncAdapter"

    const-string v8, "CALENDAR BAD SYNC KEY"

    invoke-static {v12, v8}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 306
    .local v1, cvx:Landroid/content/ContentValues;
    const-string v8, "syncKey"

    const-string v9, "0"

    invoke-virtual {v1, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    sget-object v8, Lcom/android/email/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    iget-object v9, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-wide v9, v9, Lcom/android/email/provider/EmailContent$Mailbox;->mId:J

    invoke-static {v8, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    .line 308
    .local v5, mMailboxUri:Landroid/net/Uri;
    iget-object v8, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v8, v5, v1, v11, v11}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    .line 309
    .local v6, mailboxCount:I
    const-string v8, "EasCalendarSyncAdapter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Updating Calendar mailbox with sync key 0. Count = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v12, v8}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    const-string v7, "_sync_account_type=\'com.android.exchange\'"

    .line 314
    .local v7, where:Ljava/lang/String;
    sget-object v8, Landroid/provider/Calendar$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v8}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getCalendarUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v4

    .line 315
    .local v4, mCalendarUri:Landroid/net/Uri;
    iget-object v8, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v8, v4, v7, v11}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 318
    .local v0, calCount:I
    const-string v8, "EasCalendarSyncAdapter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Calendars table row deleted. Count = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v12, v8}, Lcom/android/exchange/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    sget-object v8, Landroid/provider/Calendar$SyncState;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v8}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->getCalendarUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    .line 323
    .local v3, mCalendarSyncStateUri:Landroid/net/Uri;
    iget-object v8, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v8, v3, v11, v11}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 324
    .local v2, mCalendarSyncStateCount:I
    const-string v8, "EasCalendarSyncAdapter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Calendar _sync_state table row deleted. rowCount = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v12, v8}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    return-void
.end method
