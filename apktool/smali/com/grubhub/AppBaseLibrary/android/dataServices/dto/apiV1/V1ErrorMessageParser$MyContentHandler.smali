.class Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageParser$MyContentHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "SourceFile"


# instance fields
.field private callBack:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageParser$XMLParseCallBack;

.field private inMessageEntry:Z

.field private inTextNode:Z

.field private messageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIErrorMessage;",
            ">;"
        }
    .end annotation
.end field

.field private stack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageParser;


# direct methods
.method public constructor <init>(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageParser;Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageParser$XMLParseCallBack;)V
    .locals 0

    .prologue
    .line 284
    iput-object p1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageParser$MyContentHandler;->this$0:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageParser;

    .line 285
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 286
    iput-object p2, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageParser$MyContentHandler;->callBack:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageParser$XMLParseCallBack;

    .line 287
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 362
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageParser$MyContentHandler;->inTextNode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageParser$MyContentHandler;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageParser$MyContentHandler;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 365
    :cond_0
    return-void
.end method

.method public endDocument()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 298
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageParser$MyContentHandler;->messageList:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageParser$MyContentHandler;->messageList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 299
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageParser$MyContentHandler;->messageList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 300
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 301
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIErrorMessage;

    .line 302
    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIErrorMessage;->getType()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIErrorMessage;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v2, "error"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 303
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 306
    :cond_2
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageParser$MyContentHandler;->this$0:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageParser;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageParser$MyContentHandler;->messageList:Ljava/util/ArrayList;

    # setter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageParser;->xmlErrorMessages:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageParser;->access$002(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageParser;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 309
    :cond_3
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageParser$MyContentHandler;->this$0:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageParser;

    const/4 v1, 0x1

    # setter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageParser;->xmlParseDone:Z
    invoke-static {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageParser;->access$102(Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageParser;Z)Z

    .line 310
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageParser$MyContentHandler;->callBack:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageParser$XMLParseCallBack;

    if-eqz v0, :cond_4

    .line 312
    :try_start_0
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageParser$MyContentHandler;->callBack:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageParser$XMLParseCallBack;

    iget-object v1, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageParser$MyContentHandler;->messageList:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageParser$XMLParseCallBack;->run(Ljava/util/ArrayList;)V

    .line 313
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageParser$MyContentHandler;->callBack:Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageParser$XMLParseCallBack;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 319
    :cond_4
    :goto_1
    return-void

    .line 314
    :catch_0
    move-exception v0

    .line 316
    # getter for: Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageParser;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageParser;->access$200()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/grubhub/AppBaseLibrary/android/utils/e/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 339
    iput-boolean v2, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageParser$MyContentHandler;->inTextNode:Z

    .line 341
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageParser$MyContentHandler;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageParser$MyContentHandler;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    .line 343
    const-string v0, "message"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 344
    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageParser$MyContentHandler;->inMessageEntry:Z

    if-eqz v0, :cond_1

    .line 345
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageParser$MyContentHandler;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageWrapperDTO$V1ErrorMessageDTO;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageWrapperDTO$V1ErrorMessageDTO;->setMessage(Ljava/lang/String;)V

    .line 346
    iput-boolean v2, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageParser$MyContentHandler;->inMessageEntry:Z

    .line 358
    :cond_0
    :goto_0
    return-void

    .line 348
    :cond_1
    iget-object v2, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageParser$MyContentHandler;->messageList:Ljava/util/ArrayList;

    move-object v0, v1

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageWrapperDTO$V1ErrorMessageDTO;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 350
    :cond_2
    const-string v0, "field"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 351
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageParser$MyContentHandler;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageWrapperDTO$V1ErrorMessageDTO;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageWrapperDTO$V1ErrorMessageDTO;->setField(Ljava/lang/String;)V

    goto :goto_0

    .line 352
    :cond_3
    const-string v0, "msgCode"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 353
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageParser$MyContentHandler;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageWrapperDTO$V1ErrorMessageDTO;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageWrapperDTO$V1ErrorMessageDTO;->setCode(Ljava/lang/String;)V

    goto :goto_0

    .line 355
    :cond_4
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageParser$MyContentHandler;->stack:Ljava/util/Stack;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public startDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 291
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageParser$MyContentHandler;->messageList:Ljava/util/ArrayList;

    .line 292
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageParser$MyContentHandler;->stack:Ljava/util/Stack;

    .line 293
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 323
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageParser$MyContentHandler;->inTextNode:Z

    .line 325
    const-string v0, "message"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageParser$MyContentHandler;->inMessageEntry:Z

    if-nez v0, :cond_1

    .line 326
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageParser$MyContentHandler;->stack:Ljava/util/Stack;

    new-instance v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageWrapperDTO$V1ErrorMessageDTO;

    invoke-direct {v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageWrapperDTO$V1ErrorMessageDTO;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageParser$MyContentHandler;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageWrapperDTO$V1ErrorMessageDTO;

    const-string v1, "msgCode"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageWrapperDTO$V1ErrorMessageDTO;->setCode(Ljava/lang/String;)V

    .line 328
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageParser$MyContentHandler;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageWrapperDTO$V1ErrorMessageDTO;

    const-string v1, "type"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageWrapperDTO$V1ErrorMessageDTO;->setType(Ljava/lang/String;)V

    .line 329
    iput-boolean v2, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageParser$MyContentHandler;->inMessageEntry:Z

    .line 335
    :cond_0
    :goto_0
    return-void

    .line 330
    :cond_1
    const-string v0, "message"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageParser$MyContentHandler;->inMessageEntry:Z

    if-nez v0, :cond_3

    :cond_2
    const-string v0, "field"

    .line 331
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 332
    :cond_3
    iget-object v0, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageParser$MyContentHandler;->stack:Ljava/util/Stack;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    iput-boolean v2, p0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMessageParser$MyContentHandler;->inTextNode:Z

    goto :goto_0
.end method
