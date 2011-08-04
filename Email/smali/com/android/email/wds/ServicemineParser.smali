.class public Lcom/android/email/wds/ServicemineParser;
.super Ljava/lang/Object;
.source "ServicemineParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/wds/ServicemineParser$1;,
        Lcom/android/email/wds/ServicemineParser$ServiceMineXmlHandler;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    return-void
.end method


# virtual methods
.method public parse(Lorg/xml/sax/InputSource;)Lcom/android/email/wds/EmailProviderWds;
    .locals 7
    .parameter "serviceMineXml"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;,
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;,
            Ljava/net/URISyntaxException;,
            Lcom/android/email/wds/EmailProviderWds$MissingEmailConnectionException;
        }
    .end annotation

    .prologue
    .line 130
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 132
    .local v5, settings:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/email/wds/ServicemineEmailSetting;>;"
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v1

    .line 133
    .local v1, factory:Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v4

    .line 135
    .local v4, parser:Ljavax/xml/parsers/SAXParser;
    new-instance v2, Lcom/android/email/wds/ServicemineParser$ServiceMineXmlHandler;

    const/4 v6, 0x0

    invoke-direct {v2, p0, v6}, Lcom/android/email/wds/ServicemineParser$ServiceMineXmlHandler;-><init>(Lcom/android/email/wds/ServicemineParser;Lcom/android/email/wds/ServicemineParser$1;)V

    .line 136
    .local v2, handler:Lcom/android/email/wds/ServicemineParser$ServiceMineXmlHandler;
    invoke-virtual {v4, p1, v2}, Ljavax/xml/parsers/SAXParser;->parse(Lorg/xml/sax/InputSource;Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 137
    invoke-virtual {v2}, Lcom/android/email/wds/ServicemineParser$ServiceMineXmlHandler;->getSettings()Ljava/util/Collection;

    move-result-object v5

    .line 138
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .end local p0
    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/email/wds/ServicemineEmailSetting;

    goto :goto_0

    .line 147
    :cond_0
    new-instance v0, Lcom/android/email/wds/EmailProviderWds;

    invoke-direct {v0, v5}, Lcom/android/email/wds/EmailProviderWds;-><init>(Ljava/util/Collection;)V

    .line 148
    .local v0, emailProvider:Lcom/android/email/wds/EmailProviderWds;
    iget-object v6, v2, Lcom/android/email/wds/ServicemineParser$ServiceMineXmlHandler;->autoCorrectedDomain:Ljava/lang/String;

    iput-object v6, v0, Lcom/android/email/wds/EmailProviderWds;->autoCorrectedDomain:Ljava/lang/String;

    .line 149
    iget-object v6, v2, Lcom/android/email/wds/ServicemineParser$ServiceMineXmlHandler;->authNameFormat:Ljava/lang/String;

    iput-object v6, v0, Lcom/android/email/wds/EmailProviderWds;->authNameFormat:Ljava/lang/String;

    .line 151
    return-object v0
.end method
