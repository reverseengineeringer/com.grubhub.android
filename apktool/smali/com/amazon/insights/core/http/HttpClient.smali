.class public interface abstract Lcom/amazon/insights/core/http/HttpClient;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract addInterceptor(Lcom/amazon/insights/core/http/HttpClient$Interceptor;)V
.end method

.method public abstract execute(Lcom/amazon/insights/core/http/HttpClient$Request;Ljava/lang/Integer;)Lcom/amazon/insights/core/http/HttpClient$Response;
.end method

.method public abstract newRequest()Lcom/amazon/insights/core/http/HttpClient$Request;
.end method
