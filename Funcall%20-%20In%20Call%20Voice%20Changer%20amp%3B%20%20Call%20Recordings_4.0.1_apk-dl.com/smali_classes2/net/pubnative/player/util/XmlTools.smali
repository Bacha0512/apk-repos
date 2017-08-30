.class public Lnet/pubnative/player/util/XmlTools;
.super Ljava/lang/Object;
.source "XmlTools.java"


# static fields
.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const-class v0, Lnet/pubnative/player/util/XmlTools;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/pubnative/player/util/XmlTools;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getElementValue(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 9
    .param p0, "node"    # Lorg/w3c/dom/Node;

    .prologue
    .line 184
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 186
    .local v3, "childNodes":Lorg/w3c/dom/NodeList;
    const/4 v4, 0x0

    .line 189
    .local v4, "value":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "childIndex":I
    :goto_0
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-ge v2, v6, :cond_1

    .line 191
    invoke-interface {v3, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .local v1, "child":Lorg/w3c/dom/Node;
    move-object v0, v1

    .line 193
    check-cast v0, Lorg/w3c/dom/CharacterData;

    .line 194
    .local v0, "cd":Lorg/w3c/dom/CharacterData;
    invoke-interface {v0}, Lorg/w3c/dom/CharacterData;->getData()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 196
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_0

    .line 189
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 201
    :cond_0
    sget-object v6, Lnet/pubnative/player/util/XmlTools;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getElementValue: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lnet/pubnative/player/util/VASTLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v4

    .line 205
    .end local v0    # "cd":Lorg/w3c/dom/CharacterData;
    .end local v1    # "child":Lorg/w3c/dom/Node;
    .end local v4    # "value":Ljava/lang/String;
    .local v5, "value":Ljava/lang/String;
    :goto_1
    return-object v5

    .end local v5    # "value":Ljava/lang/String;
    .restart local v4    # "value":Ljava/lang/String;
    :cond_1
    move-object v5, v4

    .end local v4    # "value":Ljava/lang/String;
    .restart local v5    # "value":Ljava/lang/String;
    goto :goto_1
.end method

.method public static logXmlDocument(Lorg/w3c/dom/Document;)V
    .locals 6
    .param p0, "doc"    # Lorg/w3c/dom/Document;

    .prologue
    .line 60
    sget-object v4, Lnet/pubnative/player/util/XmlTools;->TAG:Ljava/lang/String;

    const-string v5, "logXmlDocument"

    invoke-static {v4, v5}, Lnet/pubnative/player/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    :try_start_0
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v2

    .line 65
    .local v2, "tf":Ljavax/xml/transform/TransformerFactory;
    invoke-virtual {v2}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v3

    .line 66
    .local v3, "transformer":Ljavax/xml/transform/Transformer;
    const-string v4, "omit-xml-declaration"

    const-string v5, "no"

    invoke-virtual {v3, v4, v5}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string v4, "method"

    const-string v5, "xml"

    invoke-virtual {v3, v4, v5}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string v4, "indent"

    const-string v5, "yes"

    invoke-virtual {v3, v4, v5}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const-string v4, "encoding"

    const-string v5, "UTF-8"

    invoke-virtual {v3, v4, v5}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const-string v4, "{http://xml.apache.org/xslt}indent-amount"

    const-string v5, "4"

    invoke-virtual {v3, v4, v5}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 73
    .local v1, "sw":Ljava/io/StringWriter;
    new-instance v4, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v4, p0}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    new-instance v5, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v5, v1}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v3, v4, v5}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 75
    sget-object v4, Lnet/pubnative/player/util/XmlTools;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lnet/pubnative/player/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .end local v1    # "sw":Ljava/io/StringWriter;
    .end local v2    # "tf":Ljavax/xml/transform/TransformerFactory;
    .end local v3    # "transformer":Ljavax/xml/transform/Transformer;
    :goto_0
    return-void

    .line 77
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Ljava/lang/Exception;
    sget-object v4, Lnet/pubnative/player/util/XmlTools;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Lnet/pubnative/player/util/VASTLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static stringFromStream(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 6
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 166
    sget-object v4, Lnet/pubnative/player/util/XmlTools;->TAG:Ljava/lang/String;

    const-string v5, "stringFromStream"

    invoke-static {v4, v5}, Lnet/pubnative/player/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 169
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    const/16 v4, 0x400

    new-array v1, v4, [B

    .line 170
    .local v1, "buffer":[B
    const/4 v3, 0x0

    .line 172
    .local v3, "length":I
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 174
    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 177
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 179
    .local v2, "bytes":[B
    new-instance v4, Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-direct {v4, v2, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v4
.end method

.method public static stringToDocument(Ljava/lang/String;)Lorg/w3c/dom/Document;
    .locals 6
    .param p0, "doc"    # Ljava/lang/String;

    .prologue
    .line 142
    sget-object v4, Lnet/pubnative/player/util/XmlTools;->TAG:Ljava/lang/String;

    const-string v5, "stringToDocument"

    invoke-static {v4, v5}, Lnet/pubnative/player/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const/4 v1, 0x0

    .line 149
    .local v1, "document":Lorg/w3c/dom/Document;
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 151
    .local v0, "db":Ljavax/xml/parsers/DocumentBuilder;
    new-instance v3, Lorg/xml/sax/InputSource;

    invoke-direct {v3}, Lorg/xml/sax/InputSource;-><init>()V

    .line 152
    .local v3, "is":Lorg/xml/sax/InputSource;
    new-instance v4, Ljava/io/StringReader;

    invoke-direct {v4, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lorg/xml/sax/InputSource;->setCharacterStream(Ljava/io/Reader;)V

    .line 154
    invoke-virtual {v0, v3}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 160
    .end local v0    # "db":Ljavax/xml/parsers/DocumentBuilder;
    .end local v3    # "is":Lorg/xml/sax/InputSource;
    :goto_0
    return-object v1

    .line 156
    :catch_0
    move-exception v2

    .line 158
    .local v2, "e":Ljava/lang/Exception;
    sget-object v4, Lnet/pubnative/player/util/XmlTools;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Lnet/pubnative/player/util/VASTLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static xmlDocumentToString(Lorg/w3c/dom/Document;)Ljava/lang/String;
    .locals 7
    .param p0, "doc"    # Lorg/w3c/dom/Document;

    .prologue
    .line 86
    const/4 v4, 0x0

    .line 87
    .local v4, "xml":Ljava/lang/String;
    sget-object v5, Lnet/pubnative/player/util/XmlTools;->TAG:Ljava/lang/String;

    const-string v6, "xmlDocumentToString"

    invoke-static {v5, v6}, Lnet/pubnative/player/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :try_start_0
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v2

    .line 92
    .local v2, "tf":Ljavax/xml/transform/TransformerFactory;
    invoke-virtual {v2}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v3

    .line 93
    .local v3, "transformer":Ljavax/xml/transform/Transformer;
    const-string v5, "omit-xml-declaration"

    const-string v6, "no"

    invoke-virtual {v3, v5, v6}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string v5, "method"

    const-string v6, "xml"

    invoke-virtual {v3, v5, v6}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string v5, "indent"

    const-string v6, "yes"

    invoke-virtual {v3, v5, v6}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string v5, "encoding"

    const-string v6, "UTF-8"

    invoke-virtual {v3, v5, v6}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v5, "{http://xml.apache.org/xslt}indent-amount"

    const-string v6, "4"

    invoke-virtual {v3, v5, v6}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 100
    .local v1, "sw":Ljava/io/StringWriter;
    new-instance v5, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v5, p0}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    new-instance v6, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v6, v1}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v3, v5, v6}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 102
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 109
    .end local v1    # "sw":Ljava/io/StringWriter;
    .end local v2    # "tf":Ljavax/xml/transform/TransformerFactory;
    .end local v3    # "transformer":Ljavax/xml/transform/Transformer;
    :goto_0
    return-object v4

    .line 104
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Ljava/lang/Exception;
    sget-object v5, Lnet/pubnative/player/util/XmlTools;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Lnet/pubnative/player/util/VASTLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static xmlDocumentToString(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 7
    .param p0, "node"    # Lorg/w3c/dom/Node;

    .prologue
    .line 114
    const/4 v4, 0x0

    .line 115
    .local v4, "xml":Ljava/lang/String;
    sget-object v5, Lnet/pubnative/player/util/XmlTools;->TAG:Ljava/lang/String;

    const-string v6, "xmlDocumentToString"

    invoke-static {v5, v6}, Lnet/pubnative/player/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    :try_start_0
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v2

    .line 120
    .local v2, "tf":Ljavax/xml/transform/TransformerFactory;
    invoke-virtual {v2}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v3

    .line 121
    .local v3, "transformer":Ljavax/xml/transform/Transformer;
    const-string v5, "omit-xml-declaration"

    const-string v6, "yes"

    invoke-virtual {v3, v5, v6}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const-string v5, "method"

    const-string v6, "xml"

    invoke-virtual {v3, v5, v6}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const-string v5, "indent"

    const-string v6, "yes"

    invoke-virtual {v3, v5, v6}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const-string v5, "encoding"

    const-string v6, "UTF-8"

    invoke-virtual {v3, v5, v6}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const-string v5, "{http://xml.apache.org/xslt}indent-amount"

    const-string v6, "4"

    invoke-virtual {v3, v5, v6}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 128
    .local v1, "sw":Ljava/io/StringWriter;
    new-instance v5, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v5, p0}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    new-instance v6, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v6, v1}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v3, v5, v6}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 130
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 137
    .end local v1    # "sw":Ljava/io/StringWriter;
    .end local v2    # "tf":Ljavax/xml/transform/TransformerFactory;
    .end local v3    # "transformer":Ljavax/xml/transform/Transformer;
    :goto_0
    return-object v4

    .line 132
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Ljava/lang/Exception;
    sget-object v5, Lnet/pubnative/player/util/XmlTools;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Lnet/pubnative/player/util/VASTLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
