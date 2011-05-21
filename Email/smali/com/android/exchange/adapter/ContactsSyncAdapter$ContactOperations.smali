.class Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;
.super Ljava/util/ArrayList;
.source "ContactsSyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/adapter/ContactsSyncAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContactOperations"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Landroid/content/ContentProviderOperation;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mContactBackValue:I

.field private mContactIndexArray:[I

.field private mContactIndexCount:I

.field private mCount:I

.field private mResults:[Landroid/content/ContentProviderResult;

.field final synthetic this$0:Lcom/android/exchange/adapter/ContactsSyncAdapter;


# direct methods
.method private constructor <init>(Lcom/android/exchange/adapter/ContactsSyncAdapter;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 979
    iput-object p1, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->this$0:Lcom/android/exchange/adapter/ContactsSyncAdapter;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 981
    iput v1, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->mCount:I

    .line 982
    iget v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->mCount:I

    iput v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->mContactBackValue:I

    .line 984
    const-string v0, "5"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->mContactIndexArray:[I

    .line 986
    iput v1, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->mContactIndexCount:I

    .line 987
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->mResults:[Landroid/content/ContentProviderResult;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/exchange/adapter/ContactsSyncAdapter;Lcom/android/exchange/adapter/ContactsSyncAdapter$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 979
    invoke-direct {p0, p1}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;-><init>(Lcom/android/exchange/adapter/ContactsSyncAdapter;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;)[Landroid/content/ContentProviderResult;
    .locals 1
    .parameter "x0"

    .prologue
    .line 979
    iget-object v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->mResults:[Landroid/content/ContentProviderResult;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 979
    iget v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->mContactIndexCount:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 979
    iget-object v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->mContactIndexArray:[I

    return-object v0
.end method

.method private cvCompareString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "cv"
    .parameter "column"
    .parameter "oldValue"

    .prologue
    const/4 v1, 0x1

    .line 1201
    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1202
    if-eqz p3, :cond_2

    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 1208
    :goto_0
    return v0

    .line 1205
    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    move v0, v1

    .line 1206
    goto :goto_0

    .line 1208
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private findTypedData(Ljava/util/ArrayList;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Entity$NamedContentValues;
    .locals 8
    .parameter
    .parameter "contentItemType"
    .parameter "type"
    .parameter "stringType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Entity$NamedContentValues;",
            ">;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/Entity$NamedContentValues;"
        }
    .end annotation

    .prologue
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity$NamedContentValues;>;"
    const-string v7, "data2"

    .line 1046
    const/4 v4, 0x0

    .line 1049
    .local v4, result:Landroid/content/Entity$NamedContentValues;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Entity$NamedContentValues;

    .line 1050
    .local v3, namedContentValues:Landroid/content/Entity$NamedContentValues;
    iget-object v5, v3, Landroid/content/Entity$NamedContentValues;->uri:Landroid/net/Uri;

    .line 1051
    .local v5, uri:Landroid/net/Uri;
    iget-object v0, v3, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    .line 1052
    .local v0, cv:Landroid/content/ContentValues;
    sget-object v6, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6, v5}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1053
    const-string v6, "mimetype"

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1054
    .local v2, mimeType:Ljava/lang/String;
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1055
    if-eqz p4, :cond_1

    .line 1056
    const-string v6, "data1"

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1057
    move-object v4, v3

    goto :goto_0

    .line 1063
    :cond_1
    if-ltz p3, :cond_2

    const-string v6, "data2"

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "data2"

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, p3, :cond_0

    .line 1065
    :cond_2
    move-object v4, v3

    goto :goto_0

    .line 1073
    .end local v0           #cv:Landroid/content/ContentValues;
    .end local v2           #mimeType:Ljava/lang/String;
    .end local v3           #namedContentValues:Landroid/content/Entity$NamedContentValues;
    .end local v5           #uri:Landroid/net/Uri;
    :cond_3
    if-eqz v4, :cond_4

    .line 1074
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1078
    :cond_4
    return-object v4
.end method

.method private findUntypedData(Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;
    .locals 8
    .parameter
    .parameter "type"
    .parameter "contentItemType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Entity$NamedContentValues;",
            ">;I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Entity$NamedContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1091
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity$NamedContentValues;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1094
    .local v4, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity$NamedContentValues;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Entity$NamedContentValues;

    .line 1095
    .local v3, namedContentValues:Landroid/content/Entity$NamedContentValues;
    iget-object v6, v3, Landroid/content/Entity$NamedContentValues;->uri:Landroid/net/Uri;

    .line 1096
    .local v6, uri:Landroid/net/Uri;
    iget-object v0, v3, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    .line 1097
    .local v0, cv:Landroid/content/ContentValues;
    sget-object v7, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v7, v6}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1098
    const-string v7, "mimetype"

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1099
    .local v2, mimeType:Ljava/lang/String;
    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1100
    const/4 v7, -0x1

    if-eq p2, v7, :cond_1

    .line 1101
    const-string v7, "data2"

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1102
    .local v5, subtype:I
    if-ne p2, v5, :cond_0

    .line 1106
    .end local v5           #subtype:I
    :cond_1
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1113
    .end local v0           #cv:Landroid/content/ContentValues;
    .end local v2           #mimeType:Ljava/lang/String;
    .end local v3           #namedContentValues:Landroid/content/Entity$NamedContentValues;
    .end local v6           #uri:Landroid/net/Uri;
    :cond_2
    if-eqz v4, :cond_3

    .line 1114
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1118
    :cond_3
    return-object v4
.end method

.method private newRowBuilder(Landroid/content/Entity;Ljava/lang/String;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;
    .locals 5
    .parameter "entity"
    .parameter "mimeType"

    .prologue
    const-string v4, "raw_contact_id"

    .line 1172
    iget v1, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->mContactBackValue:I

    .line 1173
    .local v1, contactId:I
    if-eqz p1, :cond_0

    .line 1174
    invoke-virtual {p1}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v2

    const-string v3, "_id"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1178
    :cond_0
    new-instance v0, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    iget-object v2, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->this$0:Lcom/android/exchange/adapter/ContactsSyncAdapter;

    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->addCallerIsSyncAdapterParameter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;-><init>(Lcom/android/exchange/adapter/ContactsSyncAdapter;Landroid/content/ContentProviderOperation$Builder;)V

    .line 1181
    .local v0, builder:Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;
    if-nez p1, :cond_1

    .line 1182
    const-string v2, "raw_contact_id"

    invoke-virtual {v0, v4, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValueBackReference(Ljava/lang/String;I)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 1188
    :goto_0
    const-string v2, "mimetype"

    invoke-virtual {v0, v2, p2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 1189
    return-object v0

    .line 1184
    :cond_1
    const-string v2, "raw_contact_id"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    goto :goto_0
.end method

.method private typedRowBuilder(Landroid/content/Entity;Ljava/lang/String;I)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;
    .locals 1
    .parameter "entity"
    .parameter "mimeType"
    .parameter "type"

    .prologue
    .line 1162
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->createBuilder(Landroid/content/Entity;Ljava/lang/String;ILjava/lang/String;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    move-result-object v0

    return-object v0
.end method

.method private untypedRowBuilder(Landroid/content/Entity;Ljava/lang/String;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;
    .locals 2
    .parameter "entity"
    .parameter "mimeType"

    .prologue
    .line 1166
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->createBuilder(Landroid/content/Entity;Ljava/lang/String;ILjava/lang/String;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public add(Landroid/content/ContentProviderOperation;)Z
    .locals 1
    .parameter "op"

    .prologue
    .line 991
    invoke-super {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 992
    iget v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->mCount:I

    .line 993
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 979
    check-cast p1, Landroid/content/ContentProviderOperation;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->add(Landroid/content/ContentProviderOperation;)Z

    move-result v0

    return v0
.end method

.method public addBirthday(Landroid/content/Entity;Ljava/lang/String;)V
    .locals 5
    .parameter "entity"
    .parameter "birthday"

    .prologue
    const/4 v3, 0x3

    const-string v4, "data1"

    .line 1228
    const-string v2, "vnd.android.cursor.item/contact_event"

    invoke-direct {p0, p1, v2, v3}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->typedRowBuilder(Landroid/content/Entity;Ljava/lang/String;I)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    move-result-object v0

    .line 1230
    .local v0, builder:Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;
    iget-object v1, v0, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->cv:Landroid/content/ContentValues;

    .line 1231
    .local v1, cv:Landroid/content/ContentValues;
    if-eqz v1, :cond_0

    const-string v2, "data1"

    invoke-direct {p0, v1, v4, p2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->cvCompareString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1237
    :goto_0
    return-void

    .line 1234
    :cond_0
    const-string v2, "data1"

    invoke-virtual {v0, v4, p2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 1235
    const-string v2, "data2"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 1236
    invoke-virtual {v0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->add(Landroid/content/ContentProviderOperation;)Z

    goto :goto_0
.end method

.method public addBusiness(Landroid/content/Entity;Lcom/android/exchange/adapter/ContactsSyncAdapter$EasBusiness;)V
    .locals 6
    .parameter "entity"
    .parameter "business"

    .prologue
    const-string v5, "data8"

    const-string v4, "data7"

    const-string v3, "data6"

    .line 1281
    const-string v2, "vnd.android.cursor.item/eas_business"

    invoke-direct {p0, p1, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->untypedRowBuilder(Landroid/content/Entity;Ljava/lang/String;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    move-result-object v0

    .line 1282
    .local v0, builder:Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;
    iget-object v1, v0, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->cv:Landroid/content/ContentValues;

    .line 1283
    .local v1, cv:Landroid/content/ContentValues;
    if-eqz v1, :cond_1

    const-string v2, "data8"

    iget-object v2, p2, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasBusiness;->accountName:Ljava/lang/String;

    invoke-direct {p0, v1, v5, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->cvCompareString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "data6"

    iget-object v2, p2, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasBusiness;->customerId:Ljava/lang/String;

    invoke-direct {p0, v1, v3, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->cvCompareString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "data7"

    iget-object v2, p2, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasBusiness;->governmentId:Ljava/lang/String;

    invoke-direct {p0, v1, v4, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->cvCompareString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1295
    :cond_0
    :goto_0
    return-void

    .line 1288
    :cond_1
    invoke-virtual {p2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasBusiness;->hasData()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1291
    const-string v2, "data8"

    iget-object v2, p2, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasBusiness;->accountName:Ljava/lang/String;

    invoke-virtual {v0, v5, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 1292
    const-string v2, "data6"

    iget-object v2, p2, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasBusiness;->customerId:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 1293
    const-string v2, "data7"

    iget-object v2, p2, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasBusiness;->governmentId:Ljava/lang/String;

    invoke-virtual {v0, v4, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 1294
    invoke-virtual {v0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->add(Landroid/content/ContentProviderOperation;)Z

    goto :goto_0
.end method

.method public addChildren(Landroid/content/Entity;Ljava/util/ArrayList;)V
    .locals 6
    .parameter "entity"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Entity;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1212
    .local p2, children:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v5, "vnd.android.cursor.item/eas_children"

    invoke-direct {p0, p1, v5}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->untypedRowBuilder(Landroid/content/Entity;Ljava/lang/String;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    move-result-object v0

    .line 1213
    .local v0, builder:Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;
    const/4 v2, 0x0

    .line 1214
    .local v2, i:I
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1215
    .local v1, child:Ljava/lang/String;
    sget-object v5, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasChildren;->ROWS:[Ljava/lang/String;

    add-int/lit8 v3, v2, 0x1

    .end local v2           #i:I
    .local v3, i:I
    aget-object v5, v5, v2

    invoke-virtual {v0, v5, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    move v2, v3

    .end local v3           #i:I
    .restart local v2       #i:I
    goto :goto_0

    .line 1217
    .end local v1           #child:Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->add(Landroid/content/ContentProviderOperation;)Z

    .line 1218
    return-void
.end method

.method public addGroup(Landroid/content/Entity;Ljava/lang/String;)V
    .locals 3
    .parameter "entity"
    .parameter "group"

    .prologue
    .line 1221
    const-string v1, "vnd.android.cursor.item/group_membership"

    const/4 v2, -0x1

    invoke-virtual {p0, p1, v1, v2, p2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->createBuilder(Landroid/content/Entity;Ljava/lang/String;ILjava/lang/String;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    move-result-object v0

    .line 1223
    .local v0, builder:Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;
    const-string v1, "group_sourceid"

    invoke-virtual {v0, v1, p2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 1224
    invoke-virtual {v0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->add(Landroid/content/ContentProviderOperation;)Z

    .line 1225
    return-void
.end method

.method public addName(Landroid/content/Entity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "entity"
    .parameter "prefix"
    .parameter "givenName"
    .parameter "familyName"
    .parameter "middleName"
    .parameter "suffix"
    .parameter "displayName"
    .parameter "yomiFirstName"
    .parameter "yomiLastName"
    .parameter "fileAs"

    .prologue
    .line 1242
    const-string v2, "vnd.android.cursor.item/name"

    invoke-direct {p0, p1, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->untypedRowBuilder(Landroid/content/Entity;Ljava/lang/String;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    move-result-object v0

    .line 1243
    .local v0, builder:Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;
    iget-object v1, v0, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->cv:Landroid/content/ContentValues;

    .line 1244
    .local v1, cv:Landroid/content/ContentValues;
    if-eqz v1, :cond_0

    const-string v2, "data2"

    invoke-direct {p0, v1, v2, p3}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->cvCompareString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "data3"

    invoke-direct {p0, v1, v2, p4}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->cvCompareString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "data5"

    invoke-direct {p0, v1, v2, p5}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->cvCompareString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "data4"

    invoke-direct {p0, v1, v2, p2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->cvCompareString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "data7"

    invoke-direct {p0, v1, v2, p8}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->cvCompareString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "data9"

    invoke-direct {p0, v1, v2, p9}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->cvCompareString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "data6"

    invoke-direct {p0, v1, v2, p6}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->cvCompareString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1263
    :goto_0
    return-void

    .line 1254
    :cond_0
    const-string v2, "data2"

    invoke-virtual {v0, v2, p3}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 1255
    const-string v2, "data3"

    invoke-virtual {v0, v2, p4}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 1256
    const-string v2, "data5"

    invoke-virtual {v0, v2, p5}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 1257
    const-string v2, "data6"

    invoke-virtual {v0, v2, p6}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 1258
    const-string v2, "data7"

    invoke-virtual {v0, v2, p8}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 1259
    const-string v2, "data9"

    invoke-virtual {v0, v2, p9}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 1260
    const-string v2, "data4"

    invoke-virtual {v0, v2, p2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 1262
    invoke-virtual {v0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->add(Landroid/content/ContentProviderOperation;)Z

    goto :goto_0
.end method

.method public addNickname(Landroid/content/Entity;Ljava/lang/String;)V
    .locals 5
    .parameter "entity"
    .parameter "name"

    .prologue
    const/4 v3, 0x1

    const-string v4, "data1"

    .line 1340
    const-string v2, "vnd.android.cursor.item/nickname"

    invoke-direct {p0, p1, v2, v3}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->typedRowBuilder(Landroid/content/Entity;Ljava/lang/String;I)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    move-result-object v0

    .line 1342
    .local v0, builder:Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;
    iget-object v1, v0, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->cv:Landroid/content/ContentValues;

    .line 1343
    .local v1, cv:Landroid/content/ContentValues;
    if-eqz v1, :cond_0

    const-string v2, "data1"

    invoke-direct {p0, v1, v4, p2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->cvCompareString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1349
    :goto_0
    return-void

    .line 1346
    :cond_0
    const-string v2, "data2"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 1347
    const-string v2, "data1"

    invoke-virtual {v0, v4, p2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 1348
    invoke-virtual {v0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->add(Landroid/content/ContentProviderOperation;)Z

    goto :goto_0
.end method

.method public addNote(Landroid/content/Entity;Ljava/lang/String;)V
    .locals 8
    .parameter "entity"
    .parameter "note"

    .prologue
    const-string v7, "data1"

    .line 1466
    const-string v5, "vnd.android.cursor.item/note"

    const/4 v6, -0x1

    invoke-direct {p0, p1, v5, v6}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->typedRowBuilder(Landroid/content/Entity;Ljava/lang/String;I)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    move-result-object v0

    .line 1467
    .local v0, builder:Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;
    iget-object v2, v0, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->cv:Landroid/content/ContentValues;

    .line 1468
    .local v2, cv:Landroid/content/ContentValues;
    if-nez p2, :cond_1

    .line 1488
    :cond_0
    :goto_0
    return-void

    .line 1469
    :cond_1
    const-string v5, "\r\n"

    const-string v6, "\n"

    invoke-virtual {p2, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1470
    if-eqz v2, :cond_2

    const-string v5, "data1"

    invoke-direct {p0, v2, v7, p2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->cvCompareString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1476
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    .line 1477
    .local v4, len:I
    const/4 v3, 0x0

    .line 1478
    .local v3, i:I
    :goto_1
    if-ge v3, v4, :cond_3

    .line 1479
    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1480
    .local v1, c:C
    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1484
    .end local v1           #c:C
    :cond_3
    if-eq v3, v4, :cond_0

    .line 1486
    const-string v5, "data1"

    invoke-virtual {v0, v7, p2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 1487
    invoke-virtual {v0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->add(Landroid/content/ContentProviderOperation;)Z

    goto :goto_0

    .line 1478
    .restart local v1       #c:C
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public addOrganization(Landroid/content/Entity;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "entity"
    .parameter "type"
    .parameter "company"
    .parameter "title"
    .parameter "department"
    .parameter "yomiCompanyName"
    .parameter "officeLocation"

    .prologue
    .line 1447
    const-string v2, "vnd.android.cursor.item/organization"

    invoke-direct {p0, p1, v2, p2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->typedRowBuilder(Landroid/content/Entity;Ljava/lang/String;I)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    move-result-object v0

    .line 1448
    .local v0, builder:Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;
    iget-object v1, v0, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->cv:Landroid/content/ContentValues;

    .line 1449
    .local v1, cv:Landroid/content/ContentValues;
    if-eqz v1, :cond_0

    const-string v2, "data1"

    invoke-direct {p0, v1, v2, p3}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->cvCompareString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "data8"

    invoke-direct {p0, v1, v2, p6}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->cvCompareString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "data5"

    invoke-direct {p0, v1, v2, p5}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->cvCompareString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "data4"

    invoke-direct {p0, v1, v2, p4}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->cvCompareString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "data9"

    invoke-direct {p0, v1, v2, p7}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->cvCompareString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1463
    :goto_0
    return-void

    .line 1456
    :cond_0
    const-string v2, "data2"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 1457
    const-string v2, "data1"

    invoke-virtual {v0, v2, p3}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 1458
    const-string v2, "data4"

    invoke-virtual {v0, v2, p4}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 1459
    const-string v2, "data5"

    invoke-virtual {v0, v2, p5}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 1460
    const-string v2, "data8"

    invoke-virtual {v0, v2, p6}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 1461
    const-string v2, "data9"

    invoke-virtual {v0, v2, p7}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 1462
    invoke-virtual {v0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->add(Landroid/content/ContentProviderOperation;)Z

    goto :goto_0
.end method

.method public addPersonal(Landroid/content/Entity;Lcom/android/exchange/adapter/ContactsSyncAdapter$EasPersonal;)V
    .locals 5
    .parameter "entity"
    .parameter "personal"

    .prologue
    const-string v4, "data4"

    const-string v3, "data2"

    .line 1266
    const-string v2, "vnd.android.cursor.item/eas_personal"

    invoke-direct {p0, p1, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->untypedRowBuilder(Landroid/content/Entity;Ljava/lang/String;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    move-result-object v0

    .line 1267
    .local v0, builder:Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;
    iget-object v1, v0, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->cv:Landroid/content/ContentValues;

    .line 1268
    .local v1, cv:Landroid/content/ContentValues;
    if-eqz v1, :cond_1

    const-string v2, "data2"

    iget-object v2, p2, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasPersonal;->anniversary:Ljava/lang/String;

    invoke-direct {p0, v1, v3, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->cvCompareString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "data4"

    iget-object v2, p2, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasPersonal;->fileAs:Ljava/lang/String;

    invoke-direct {p0, v1, v4, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->cvCompareString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1278
    :cond_0
    :goto_0
    return-void

    .line 1272
    :cond_1
    invoke-virtual {p2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasPersonal;->hasData()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1275
    const-string v2, "data4"

    iget-object v2, p2, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasPersonal;->fileAs:Ljava/lang/String;

    invoke-virtual {v0, v4, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 1276
    const-string v2, "data2"

    iget-object v2, p2, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasPersonal;->anniversary:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 1277
    invoke-virtual {v0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->add(Landroid/content/ContentProviderOperation;)Z

    goto :goto_0
.end method

.method public addPhone(Landroid/content/Entity;ILjava/lang/String;)V
    .locals 5
    .parameter "entity"
    .parameter "type"
    .parameter "phone"

    .prologue
    const-string v4, "data1"

    .line 1307
    const-string v2, "vnd.android.cursor.item/phone_v2"

    invoke-direct {p0, p1, v2, p2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->typedRowBuilder(Landroid/content/Entity;Ljava/lang/String;I)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    move-result-object v0

    .line 1308
    .local v0, builder:Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;
    iget-object v1, v0, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->cv:Landroid/content/ContentValues;

    .line 1309
    .local v1, cv:Landroid/content/ContentValues;
    if-eqz v1, :cond_0

    const-string v2, "data1"

    invoke-direct {p0, v1, v4, p3}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->cvCompareString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1315
    :goto_0
    return-void

    .line 1312
    :cond_0
    const-string v2, "data2"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 1313
    const-string v2, "data1"

    invoke-virtual {v0, v4, p3}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 1314
    invoke-virtual {v0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->add(Landroid/content/ContentProviderOperation;)Z

    goto :goto_0
.end method

.method public addPhoto(Landroid/content/Entity;Ljava/lang/String;)V
    .locals 3
    .parameter "entity"
    .parameter "photo"

    .prologue
    .line 1298
    const-string v2, "vnd.android.cursor.item/photo"

    invoke-direct {p0, p1, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->untypedRowBuilder(Landroid/content/Entity;Ljava/lang/String;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    move-result-object v0

    .line 1301
    .local v0, builder:Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;
    const/4 v2, 0x0

    invoke-static {p2, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    .line 1302
    .local v1, pic:[B
    const-string v2, "data15"

    invoke-virtual {v0, v2, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 1303
    invoke-virtual {v0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->add(Landroid/content/ContentProviderOperation;)Z

    .line 1304
    return-void
.end method

.method public addPostal(Landroid/content/Entity;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "entity"
    .parameter "type"
    .parameter "street"
    .parameter "city"
    .parameter "state"
    .parameter "country"
    .parameter "code"

    .prologue
    .line 1353
    const-string v2, "vnd.android.cursor.item/postal-address_v2"

    invoke-direct {p0, p1, v2, p2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->typedRowBuilder(Landroid/content/Entity;Ljava/lang/String;I)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    move-result-object v0

    .line 1355
    .local v0, builder:Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;
    iget-object v1, v0, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->cv:Landroid/content/ContentValues;

    .line 1356
    .local v1, cv:Landroid/content/ContentValues;
    if-eqz v1, :cond_0

    const-string v2, "data7"

    invoke-direct {p0, v1, v2, p4}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->cvCompareString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "data4"

    invoke-direct {p0, v1, v2, p3}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->cvCompareString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "data10"

    invoke-direct {p0, v1, v2, p6}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->cvCompareString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "data9"

    invoke-direct {p0, v1, v2, p7}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->cvCompareString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "data8"

    invoke-direct {p0, v1, v2, p5}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->cvCompareString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1370
    :goto_0
    return-void

    .line 1363
    :cond_0
    const-string v2, "data2"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 1364
    const-string v2, "data7"

    invoke-virtual {v0, v2, p4}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 1365
    const-string v2, "data4"

    invoke-virtual {v0, v2, p3}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 1366
    const-string v2, "data10"

    invoke-virtual {v0, v2, p6}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 1367
    const-string v2, "data9"

    invoke-virtual {v0, v2, p7}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 1368
    const-string v2, "data8"

    invoke-virtual {v0, v2, p5}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 1369
    invoke-virtual {v0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->add(Landroid/content/ContentProviderOperation;)Z

    goto :goto_0
.end method

.method public addRelation(Landroid/content/Entity;ILjava/lang/String;)V
    .locals 5
    .parameter "entity"
    .parameter "type"
    .parameter "value"

    .prologue
    const-string v4, "data1"

    .line 1329
    const-string v2, "vnd.android.cursor.item/relation"

    invoke-direct {p0, p1, v2, p2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->typedRowBuilder(Landroid/content/Entity;Ljava/lang/String;I)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    move-result-object v0

    .line 1330
    .local v0, builder:Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;
    iget-object v1, v0, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->cv:Landroid/content/ContentValues;

    .line 1331
    .local v1, cv:Landroid/content/ContentValues;
    if-eqz v1, :cond_0

    const-string v2, "data1"

    invoke-direct {p0, v1, v4, p3}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->cvCompareString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1337
    :goto_0
    return-void

    .line 1334
    :cond_0
    const-string v2, "data2"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 1335
    const-string v2, "data1"

    invoke-virtual {v0, v4, p3}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 1336
    invoke-virtual {v0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->add(Landroid/content/ContentProviderOperation;)Z

    goto :goto_0
.end method

.method public addUntyped(Landroid/content/Entity;Ljava/util/ArrayList;Ljava/lang/String;II)V
    .locals 19
    .parameter "entity"
    .parameter
    .parameter "mimeType"
    .parameter "type"
    .parameter "maxRows"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Entity;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/exchange/adapter/ContactsSyncAdapter$UntypedRow;",
            ">;",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    .prologue
    .line 1381
    .local p2, rows:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/exchange/adapter/ContactsSyncAdapter$UntypedRow;>;"
    invoke-static {}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->access$700()Ljava/util/ArrayList;

    move-result-object v13

    .line 1382
    .local v13, oldValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity$NamedContentValues;>;"
    invoke-static {}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->access$700()Ljava/util/ArrayList;

    move-result-object v7

    .line 1383
    .local v7, entityValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity$NamedContentValues;>;"
    if-eqz p1, :cond_0

    .line 1384
    move-object/from16 v0, p0

    move-object v1, v7

    move/from16 v2, p4

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->findUntypedData(Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v13

    .line 1385
    invoke-virtual/range {p1 .. p1}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v7

    .line 1389
    :cond_0
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 1392
    .local v16, rowsToReplace:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/exchange/adapter/ContactsSyncAdapter$UntypedRow;>;"
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 1393
    .local v12, numRows:I
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/exchange/adapter/ContactsSyncAdapter$UntypedRow;

    .line 1394
    .local v14, row:Lcom/android/exchange/adapter/ContactsSyncAdapter$UntypedRow;
    const/4 v8, 0x0

    .line 1396
    .local v8, found:Z
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/Entity$NamedContentValues;

    .line 1397
    .local v11, ncv:Landroid/content/Entity$NamedContentValues;
    iget-object v5, v11, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    .line 1398
    .local v5, cv:Landroid/content/ContentValues;
    const-string v17, "data1"

    move-object v0, v5

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1399
    .local v6, data:Ljava/lang/String;
    const/4 v15, -0x1

    .line 1400
    .local v15, rowType:I
    const-string v17, "data2"

    move-object v0, v5

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 1401
    const-string v17, "data2"

    move-object v0, v5

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 1403
    :cond_3
    invoke-interface {v14, v15, v6}, Lcom/android/exchange/adapter/ContactsSyncAdapter$UntypedRow;->isSameAs(ILjava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 1404
    const-string v17, "com.android.exchange.FOUND_ROW"

    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    move-object v0, v5

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1406
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1407
    const/4 v8, 0x1

    .line 1411
    .end local v5           #cv:Landroid/content/ContentValues;
    .end local v6           #data:Ljava/lang/String;
    .end local v11           #ncv:Landroid/content/Entity$NamedContentValues;
    .end local v15           #rowType:I
    :cond_4
    if-nez v8, :cond_1

    .line 1413
    move v0, v12

    move/from16 v1, p5

    if-ge v0, v1, :cond_5

    .line 1415
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->newRowBuilder(Landroid/content/Entity;Ljava/lang/String;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    move-result-object v4

    .line 1416
    .local v4, builder:Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;
    invoke-interface {v14, v4}, Lcom/android/exchange/adapter/ContactsSyncAdapter$UntypedRow;->addValues(Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;)V

    .line 1417
    invoke-virtual {v4}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->add(Landroid/content/ContentProviderOperation;)Z

    .line 1418
    add-int/lit8 v12, v12, 0x1

    .line 1419
    goto :goto_0

    .line 1421
    .end local v4           #builder:Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;
    :cond_5
    move-object/from16 v0, v16

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1427
    .end local v8           #found:Z
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v14           #row:Lcom/android/exchange/adapter/ContactsSyncAdapter$UntypedRow;
    :cond_6
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_7
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/exchange/adapter/ContactsSyncAdapter$UntypedRow;

    .line 1428
    .restart local v14       #row:Lcom/android/exchange/adapter/ContactsSyncAdapter$UntypedRow;
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10       #i$:Ljava/util/Iterator;
    :cond_8
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/Entity$NamedContentValues;

    .line 1429
    .restart local v11       #ncv:Landroid/content/Entity$NamedContentValues;
    iget-object v5, v11, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    .line 1431
    .restart local v5       #cv:Landroid/content/ContentValues;
    const-string v17, "com.android.exchange.FOUND_ROW"

    move-object v0, v5

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_8

    .line 1433
    new-instance v4, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->this$0:Lcom/android/exchange/adapter/ContactsSyncAdapter;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->this$0:Lcom/android/exchange/adapter/ContactsSyncAdapter;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object v1, v11

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->dataUriFromNamedContentValues(Landroid/content/Entity$NamedContentValues;)Landroid/net/Uri;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->addCallerIsSyncAdapterParameter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v18

    move-object v0, v4

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object v3, v11

    invoke-direct {v0, v1, v2, v3}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;-><init>(Lcom/android/exchange/adapter/ContactsSyncAdapter;Landroid/content/ContentProviderOperation$Builder;Landroid/content/Entity$NamedContentValues;)V

    .line 1438
    .restart local v4       #builder:Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;
    invoke-interface {v14, v4}, Lcom/android/exchange/adapter/ContactsSyncAdapter$UntypedRow;->addValues(Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;)V

    .line 1439
    invoke-virtual {v4}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->add(Landroid/content/ContentProviderOperation;)Z

    goto :goto_1

    .line 1443
    .end local v4           #builder:Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;
    .end local v5           #cv:Landroid/content/ContentValues;
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v11           #ncv:Landroid/content/Entity$NamedContentValues;
    .end local v14           #row:Lcom/android/exchange/adapter/ContactsSyncAdapter$UntypedRow;
    :cond_9
    return-void
.end method

.method public addWebpage(Landroid/content/Entity;Ljava/lang/String;)V
    .locals 5
    .parameter "entity"
    .parameter "url"

    .prologue
    const-string v4, "data1"

    .line 1318
    const-string v2, "vnd.android.cursor.item/website"

    invoke-direct {p0, p1, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->untypedRowBuilder(Landroid/content/Entity;Ljava/lang/String;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    move-result-object v0

    .line 1319
    .local v0, builder:Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;
    iget-object v1, v0, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->cv:Landroid/content/ContentValues;

    .line 1320
    .local v1, cv:Landroid/content/ContentValues;
    if-eqz v1, :cond_0

    const-string v2, "data1"

    invoke-direct {p0, v1, v4, p2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->cvCompareString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1326
    :goto_0
    return-void

    .line 1323
    :cond_0
    const-string v2, "data2"

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 1324
    const-string v2, "data1"

    invoke-virtual {v0, v4, p2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 1325
    invoke-virtual {v0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->add(Landroid/content/ContentProviderOperation;)Z

    goto :goto_0
.end method

.method public createBuilder(Landroid/content/Entity;Ljava/lang/String;ILjava/lang/String;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;
    .locals 4
    .parameter "entity"
    .parameter "mimeType"
    .parameter "type"
    .parameter "stringType"

    .prologue
    .line 1138
    const/4 v0, 0x0

    .line 1140
    .local v0, builder:Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;
    if-eqz p1, :cond_0

    .line 1141
    invoke-virtual {p1}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {p0, v2, p2, p3, p4}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->findTypedData(Ljava/util/ArrayList;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Entity$NamedContentValues;

    move-result-object v1

    .line 1143
    .local v1, ncv:Landroid/content/Entity$NamedContentValues;
    if-eqz v1, :cond_0

    .line 1144
    new-instance v0, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .end local v0           #builder:Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;
    iget-object v2, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->this$0:Lcom/android/exchange/adapter/ContactsSyncAdapter;

    iget-object v3, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->this$0:Lcom/android/exchange/adapter/ContactsSyncAdapter;

    invoke-virtual {v3, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->dataUriFromNamedContentValues(Landroid/content/Entity$NamedContentValues;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->addCallerIsSyncAdapterParameter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-direct {v0, v2, v3, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;-><init>(Lcom/android/exchange/adapter/ContactsSyncAdapter;Landroid/content/ContentProviderOperation$Builder;Landroid/content/Entity$NamedContentValues;)V

    .line 1152
    .end local v1           #ncv:Landroid/content/Entity$NamedContentValues;
    .restart local v0       #builder:Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;
    :cond_0
    if-nez v0, :cond_1

    .line 1153
    invoke-direct {p0, p1, p2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->newRowBuilder(Landroid/content/Entity;Ljava/lang/String;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    move-result-object v0

    .line 1158
    :cond_1
    return-object v0
.end method

.method public delete(J)V
    .locals 3
    .parameter "id"

    .prologue
    .line 1008
    sget-object v0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "caller_is_syncadapter"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->add(Landroid/content/ContentProviderOperation;)Z

    .line 1014
    return-void
.end method

.method public execute()V
    .locals 6

    .prologue
    const-string v1, "problem inserting contact during server update"

    const-string v1, "EasContactsSyncAdapter"

    .line 1017
    iget-object v1, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->this$0:Lcom/android/exchange/adapter/ContactsSyncAdapter;

    iget-object v1, v1, Lcom/android/exchange/adapter/ContactsSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    invoke-virtual {v1}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1018
    :try_start_0
    iget-object v2, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->this$0:Lcom/android/exchange/adapter/ContactsSyncAdapter;

    iget-object v2, v2, Lcom/android/exchange/adapter/ContactsSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    invoke-virtual {v2}, Lcom/android/exchange/EasSyncService;->isStopped()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 1020
    :try_start_1
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1021
    iget-object v2, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->this$0:Lcom/android/exchange/adapter/ContactsSyncAdapter;

    iget-object v2, v2, Lcom/android/exchange/adapter/ContactsSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    const-string v3, "Executing "

    invoke-virtual {p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->size()I

    move-result v4

    const-string v5, " CPO\'s"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/exchange/EasSyncService;->userLog(Ljava/lang/String;ILjava/lang/String;)V

    .line 1022
    iget-object v2, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->this$0:Lcom/android/exchange/adapter/ContactsSyncAdapter;

    iget-object v2, v2, Lcom/android/exchange/adapter/ContactsSyncAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "com.android.contacts"

    invoke-virtual {v2, v3, p0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->mResults:[Landroid/content/ContentProviderResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1033
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v1

    .line 1034
    return-void

    .line 1025
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 1027
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "EasContactsSyncAdapter"

    const-string v3, "problem inserting contact during server update"

    invoke-static {v2, v3, v0}, Lcom/android/exchange/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1033
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 1028
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 1030
    .local v0, e:Landroid/content/OperationApplicationException;
    :try_start_3
    const-string v2, "EasContactsSyncAdapter"

    const-string v3, "problem inserting contact during server update"

    invoke-static {v2, v3, v0}, Lcom/android/exchange/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public newContact(Ljava/lang/String;)V
    .locals 5
    .parameter "serverId"

    .prologue
    .line 997
    iget-object v2, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->this$0:Lcom/android/exchange/adapter/ContactsSyncAdapter;

    sget-object v3, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v3}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->access$100(Lcom/android/exchange/adapter/ContactsSyncAdapter;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 999
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1000
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "sourceid"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1001
    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 1002
    iget v2, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->mCount:I

    iput v2, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->mContactBackValue:I

    .line 1003
    iget-object v2, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->mContactIndexArray:[I

    iget v3, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->mContactIndexCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->mContactIndexCount:I

    iget v4, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->mCount:I

    aput v4, v2, v3

    .line 1004
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->add(Landroid/content/ContentProviderOperation;)Z

    .line 1005
    return-void
.end method
